/*
 * OV5640.h
 *
 *  Created on: May 26, 2016
 *      Author: Elod
 */

#ifndef OV5640_H_
#define OV5640_H_

#include <sstream>
#include <iostream>
#include <cstdio>
#include <climits>

#include "I2C_Client.h"
#include "GPIO_Client.h"
#include "../hdmi/VideoOutput.h"

namespace digilent {

typedef enum {OK, ERR_GENERAL} Errc;

class OV5640 {
public:
	class HardwareError : public std::runtime_error {
	public:
		using Errc = enum {WRONG_ID = 1, IIC_NACK};
		HardwareError(Errc errc, char const* msg) : std::runtime_error(msg), errc_(errc) {}
		Errc errc() const { return errc_; }
	private:
		Errc errc_;
	};
	OV5640(I2C_Client& iic, GPIO_Client& gpio) : iic_(iic), gpio_(gpio) {}
	void init()
	{
		//Power cycle
		gpio_.clearBit(gpio_.Bits::CAM_GPIO0);
		for (int i=0; i<1000000; i++) ;
		gpio_.setBit(gpio_.Bits::CAM_GPIO0);
		for (int i=0; i<1000000; i++) ;

		uint8_t id_h, id_l;
		std::cout << "reading id" << std::endl;
		readReg(reg_ID_h, id_h);
		readReg(reg_ID_l, id_l);
		std::cout << "id:" << (int)id_h << " " << (int)id_l << std::endl;
		if (id_h != dev_ID_h_ || id_l != dev_ID_l_)
		{
			/* Does not work. https://www.xilinx.com/support/answers/64193.html
	      std::stringstream ss;
	      ss << "Got " << std::hex << id_h << id_l << ". Expected " << dev_ID_h_ << dev_ID_l_;
			 */
			char msg[100];
			snprintf(msg, sizeof(msg), "Got %02x %02x. Expected %02x %02x\r\n", id_h, id_l, dev_ID_h_, dev_ID_l_);
			throw HardwareError(HardwareError::WRONG_ID, msg);
		}
		//[1]=0 System input clock from pad; Default read = 0x11
		writeReg(0x3103, 0x11);
		//[7]=1 Software reset; [6]=0 Software power down; Default=0x02
		writeReg(0x3008, 0x82);

		//TODO delay 10ms
		for (int i=0; i<1000000; i++) ;

		typedef struct { uint16_t addr; uint8_t data; } config_word_t;
		config_word_t const init[] =
		{
				//[7]=0 Software reset; [6]=1 Software power down; Default=0x02
				{0x3008, 0x42},
				//[1]=1 System input clock from PLL; Default read = 0x11
				{0x3103, 0x03},
				//[3:0]=0000 MD2P,MD2N,MCP,MCN input; Default=0x00
				{0x3017, 0x00},
				//[7:2]=000000 MD1P,MD1N, D3:0 input; Default=0x00
				{0x3018, 0x00},
				//[6:4]=001 PLL charge pump, [3:0]=1000 MIPI 8-bit mode
				{0x3034, 0x18},

				//              +----------------+        +------------------+         +---------------------+        +---------------------+
				//XVCLK         | PRE_DIV0       |        | Mult (4+252)     |         | Sys divider (0=16)  |        | MIPI divider (0=16) |
				//+-------+-----> 3037[3:0]=0001 +--------> 3036[7:0]=0x38   +---------> 3035[7:4]=0001      +--------> 3035[3:0]=0001      |
				//12MHz   |     | / 1            | 12MHz  | * 56             | 672MHz  | / 1                 | 672MHz | / 1                 |
				//        |     +----------------+        +------------------+         +----------+----------+        +----------+----------+
				//        |                                                                       |                              |
				//        |                                                                       |                      MIPISCLK|672MHz
				//        |                                                                       |                              |
				//        |     +----------------+        +------------------+         +----------v----------+        +----------v----------+
				//        |     | PRE_DIVSP      |        | R_DIV_SP         |         | PLL R divider       |        | MIPI PHY            | MIPI_CLK
				//        +-----> 303d[5:4]=01   +--------> 303d[2]=0 (+1)   |         | 3037[4]=1 (+1)      |        |                     +------->
				//              | / 1.5          |  8MHz  | / 1              |         | / 2                 |        | / 2                 | 336MHz
				//              +----------------+        +---------+--------+         +----------+----------+        +---------------------+
				//                                                  |                             |
				//                                                  |                             |
				//                                                  |                             |
				//              +----------------+        +---------v--------+         +----------v----------+        +---------------------+
				//              | SP divider     |        | Mult             |         | BIT div (MIPI 8/10) |        | SCLK divider        | SCLK
				//              | 303c[3:0]=0x1  +<-------+ 303b[4:0]=0x19   |         | 3034[3:0]=0x8)      +----+---> 3108[1:0]=01 (2^)   +------->
				//              | / 1            | 200MHz | * 25             |         | / 2                 |    |   | / 2                 | 84MHz
				//              +--------+-------+        +------------------+         +----------+----------+    |   +---------------------+
				//                       |                                                        |               |
				//                       |                                                        |               |
				//                       |                                                        |               |
				//              +--------v-------+                                     +----------v----------+    |   +---------------------+
				//              | R_SELD5 div    | ADCCLK                              | PCLK div            |    |   | SCLK2x divider      |
				//              | 303d[1:0]=001  +------->                             | 3108[5:4]=00 (2^)   |    +---> 3108[3:2]=00 (2^)   +------->
				//              | / 1            | 200MHz                              | / 1                 |        | / 1                 | 168MHz
				//              +----------------+                                     +----------+----------+        +---------------------+
				//                                                                                |
				//                                                                                |
				//                                                                                |
				//                                                                     +----------v----------+        +---------------------+
				//                                                                     | P divider (* #lanes)| PCLK   | Scale divider       |
				//                                                                     | 3035[3:0]=0001      +--------> 3824[4:0]           |
				//                                                                     | / 1                 | 168MHz | / 2                 |
				//                                                                     +---------------------+        +---------------------+

				//PLL1 configuration
				//[7:4]=0001 System clock divider /1, [3:0]=0001 Scale divider for MIPI /1
				{0x3035, 0x11},
				//[7:0]=56 PLL multiplier
				{0x3036, 0x38},
				//[4]=1 PLL root divider /2, [3:0]=1 PLL pre-divider /1
				{0x3037, 0x11},
				//[5:4]=00 PCLK root divider /1, [3:2]=00 SCLK2x root divider /1, [1:0]=01 SCLK root divider /2
				{0x3108, 0x01},
				//PLL2 configuration
				//[5:4]=01 PRE_DIV_SP /1.5, [2]=1 R_DIV_SP /1, [1:0]=00 DIV12_SP /1
				{0x303D, 0x10},
				//[4:0]=11001 PLL2 multiplier DIV_CNT5B = 25
				{0x303B, 0x19},

				{0x3630, 0x2e},
				{0x3631, 0x0e},
				{0x3632, 0xe2},
				{0x3633, 0x23},
				{0x3621, 0xe0},
				{0x3704, 0xa0},
				{0x3703, 0x5a},
				{0x3715, 0x78},
				{0x3717, 0x01},
				{0x370b, 0x60},
				{0x3705, 0x1a},
				{0x3905, 0x02},
				{0x3906, 0x10},
				{0x3901, 0x0a},
				{0x3731, 0x02},
				//VCM debug mode
				{0x3600, 0x37},
				{0x3601, 0x33},
				//System control register changing not recommended
				{0x302d, 0x60},
				//??
				{0x3620, 0x52},
				{0x371b, 0x20},
				//?? DVP
				{0x471c, 0x50},

				{0x3a13, 0x43},
				{0x3a18, 0x00},
				{0x3a19, 0xf8},
				{0x3635, 0x13},
				{0x3636, 0x06},
				{0x3634, 0x44},
				{0x3622, 0x01},
				{0x3c01, 0x34},
				{0x3c04, 0x28},
				{0x3c05, 0x98},
				{0x3c06, 0x00},
				{0x3c07, 0x08},
				{0x3c08, 0x00},
				{0x3c09, 0x1c},
				{0x3c0a, 0x9c},
				{0x3c0b, 0x40},

				//[7]=1 color bar enable, [3:2]=00 eight color bar
				{0x503d, 0x00},
				//[2]=1 ISP vflip, [1]=1 sensor vflip
				{0x3820, 0x46},

				//[7:5]=010 Two lane mode, [4]=0 MIPI HS TX no power down, [3]=0 MIPI LP RX no power down, [2]=1 MIPI enable, [1:0]=10 Debug mode; Default=0x58
				{0x300e, 0x45},
				//[7:5]=010 One lane mode, [4]=0 MIPI HS TX no power down, [3]=0 MIPI LP RX no power down, [2]=1 MIPI enable, [1:0]=10 Debug mode; Default=0x58
				//{0x300e, 0x25},
				//[5]=0 Clock free running, [4]=1 Send line short packet, [3]=0 Use lane1 as default, [2]=1 MIPI bus LP11 when no packet; Default=0x04
				{0x4800, 0x14},
				{0x302e, 0x08},
				//[7:4]=0x3 YUV422, [3:0]=0x0 YUYV
				//{0x4300, 0x30},
				//[7:4]=0x6 RGB565, [3:0]=0x0 {b[4:0],g[5:3],g[2:0],r[4:0]}
				//{0x4300, 0x6f},
				//{0x501f, 0x01},

				{0x4713, 0x03},
				{0x4407, 0x04},
				{0x440e, 0x00},
				{0x460b, 0x35},
				//[1]=0 DVP PCLK divider manual control by 0x3824[4:0]
				{0x460c, 0x20},
				//[4:0]=1 SCALE_DIV=INT(3824[4:0]/2)
				{0x3824, 0x01},

				//MIPI timing
		//		{0x4818, 0x00},
		//		{0x4819, 0x96}, //HS Zero = 150 ns (although it seems to be HS Prepare + HS Zero
		//		{0x482a, 0x06}, //HS Zero += 6 UI
		//
		//		{0x4826, 0x00},
		//		{0x4827, 0x32}, //HS Prepare = 50 ns
		//		{0x4831, 0x04}, //HS Prepare += 4 UI

				//[7]=1 LENC correction enabled, [5]=1 RAW gamma enabled, [2]=1 Black pixel cancellation enabled, [1]=1 White pixel cancellation enabled, [0]=1 Color interpolation enabled
				//{0x5000, 0xa7},
				{0x5000, 0x03},
				//[7]=0 Special digital effects, [5]=0 scaling, [2]=0 UV average disabled, [1]=1 Color matrix enabled, [0]=1 Auto white balance enabled
				{0x5001, 0x03}
		};

		size_t i;
		for (i=0;i<sizeof(init)/sizeof(init[0]); ++i)
		{
			std::cout << i << std::endl;
			writeReg(init[i].addr, init[i].data);
		}

		init_resolution_1080p_15();

		//[7]=0 Software reset; [6]=0 Software power down; Default=0x02
		writeReg(0x3008, 0x02);
	}

	void init_resolution_720p_60()
	{
		typedef struct { uint16_t addr; uint8_t data; } config_word_t;
		// START 1280 x 720 binned, RAW10, MIPISCLK=280M, SCLK=28Mz, PCLK=56M
		config_word_t const init_720p_60[] =
		{
				//PLL1 configuration
				//[7:4]=0010 System clock divider /2, [3:0]=0001 Scale divider for MIPI /1
				{0x3035, 0x21},
				//[7:0]=70 PLL multiplier
				{0x3036, 0x46},
				//[4]=0 PLL root divider /1, [3:0]=5 PLL pre-divider /1.5
				{0x3037, 0x05},
				//[5:4]=01 PCLK root divider /2, [3:2]=01 SCLK2x root divider /2, [1:0]=10 SCLK root divider /4
				{0x3108, 0x11},

				//[6:4]=001 PLL charge pump, [3:0]=1010 MIPI 10-bit mode
				{0x3034, 0x1A},

				//[3:0]=0 X address start high byte
				{0x3800, (0 >> 8) & 0x0F},
				//[7:0]=0 X address start low byte
				{0x3801, 0 & 0xFF},
				//[2:0]=0 Y address start high byte
				{0x3802, (8 >> 8) & 0x07},
				//[7:0]=0 Y address start low byte
				{0x3803, 8 & 0xFF},

				//[3:0] X address end high byte
				{0x3804, (2619 >> 8) & 0x0F},
				//[7:0] X address end low byte
				{0x3805, 2619 & 0xFF},
				//[2:0] Y address end high byte
				{0x3806, (1947 >> 8) & 0x07},
				//[7:0] Y address end low byte
				{0x3807, 1947 & 0xFF},

				//[3:0]=0 timing hoffset high byte
				{0x3810, (0 >> 8) & 0x0F},
				//[7:0]=0 timing hoffset low byte
				{0x3811, 0 & 0xFF},
				//[2:0]=0 timing voffset high byte
				{0x3812, (0 >> 8) & 0x07},
				//[7:0]=0 timing voffset low byte
				{0x3813, 0 & 0xFF},

				//[3:0] Output horizontal width high byte
				{0x3808, (1280 >> 8) & 0x0F},
				//[7:0] Output horizontal width low byte
				{0x3809, 1280 & 0xFF},
				//[2:0] Output vertical height high byte
				{0x380a, (720 >> 8) & 0x7F},
				//[7:0] Output vertical height low byte
				{0x380b, 720 & 0xFF},

				//HTS line exposure time in # of pixels
				{0x380c, (1896 >> 8) & 0x1F},
				{0x380d, 1896 & 0xFF},
				//VTS frame exposure time in # lines
				{0x380e, (984 >> 8) & 0xFF},
				{0x380f, 984 & 0xFF},

				//[7:4]=0x3 horizontal odd subsample increment, [3:0]=0x1 horizontal even subsample increment
				{0x3814, 0x31},
				//[7:4]=0x3 vertical odd subsample increment, [3:0]=0x1 vertical even subsample increment
				{0x3815, 0x31},

				//[2]=0 ISP mirror, [1]=0 sensor mirror, [0]=1 horizontal binning
				{0x3821, 0x01},

		//		{0x4805, 0x10}, //LPX global timing select=auto
		//		{0x4818, 0x00}, //hs_prepare + hs_zero_min ns
		//		{0x4819, 0x96},
		//		{0x482A, 0x00}, //hs_prepare + hs_zero_min UI
		//
		//		{0x4824, 0x00}, //lpx_p_min ns
		//		{0x4825, 0x32},
		//		{0x4830, 0x00}, //lpx_p_min UI
		//
		//		{0x4826, 0x00}, //hs_prepare_min ns
		//		{0x4827, 0x32},
		//		{0x4831, 0x00}, //hs_prepare_min UI
				//little MIPI shit: global timing unit, period of PCLK in ns * 2(depends on # of lanes)
				{0x4837, 36}, // 1/56M*2

				//Undocumented anti-green settings
				{0x3618, 0x04},
				{0x3612, 0x59},
				{0x3708, 0x64},
				{0x3709, 0x52},
				{0x370c, 0x03},

				//[7:4]=0x0 Formatter RAW, [3:0]=0x0 BGBG/GRGR
				{0x4300, 0x00},
				//[2:0]=0x3 Format select ISP RAW (DPC)
				{0x501f, 0x03}
		};
		// END 1280 x 720 binned, RAW10, MIPISCLK=280M, SCLK=28Mz, PCLK=56M

		size_t i;
		for (i=0;i<sizeof(init_720p_60)/sizeof(init_720p_60[0]); ++i)
		{
			std::cout << i << std::endl;
			writeReg(init_720p_60[i].addr, init_720p_60[i].data);
		}

		//[7]=0 Software reset; [6]=0 Software power down; Default=0x02
		writeReg(0x3008, 0x02);
	}//init_resolution_720p_60

	void init_resolution_1080p_15()
	{
		typedef struct { uint16_t addr; uint8_t data; } config_word_t;
		// START 1920 x 1080 @ 15 fps, RAW10, MIPISCLK=210, SCLK=42MHz, PCLK=42M
		config_word_t const init_1080p_15[] =
		{
				// PLL1 configuration
				// [7:4]=0100 System clock divider /4, [3:0]=0001 Scale divider for MIPI /1
				{0x3035, 0x41},
				// [7:0]=105 PLL multiplier
				{0x3036, 0x69},
				// [4]=0 PLL root divider /1, [3:0]=5 PLL pre-divider /1.5
				{0x3037, 0x05},
				// [5:4]=01 PCLK root divider /2, [3:2]=00 SCLK2x root divider /1, [1:0]=01 SCLK root divider /2
				{0x3108, 0x11},

				// [6:4]=001 PLL charge pump, [3:0]=1010 MIPI 10-bit mode
				{0x3034, 0x1A},

				// [3:0]=0 X address start high byte
				{0x3800, (336 >> 8) & 0x0F},
				// [7:0]=0 X address start low byte
				{0x3801, 336 & 0xFF},
				// [2:0]=0 Y address start high byte
				{0x3802, (426 >> 8) & 0x07},
				// [7:0]=0 Y address start low byte
				{0x3803, 426 & 0xFF},

				// [3:0] X address end high byte
				{0x3804, (2287 >> 8) & 0x0F},
				// [7:0] X address end low byte
				{0x3805, 2287 & 0xFF},
				// [2:0] Y address end high byte
				{0x3806, (1529 >> 8) & 0x07},
				// [7:0] Y address end low byte
				{0x3807, 1529 & 0xFF},

				// [3:0]=0 timing hoffset high byte
				{0x3810, (16 >> 8) & 0x0F},
				// [7:0]=0 timing hoffset low byte
				{0x3811, 16 & 0xFF},
				// [2:0]=0 timing voffset high byte
				{0x3812, (12 >> 8) & 0x07},
				// [7:0]=0 timing voffset low byte
				{0x3813, 12 & 0xFF},

				// [3:0] Output horizontal width high byte
				{0x3808, (1920 >> 8) & 0x0F},
				// [7:0] Output horizontal width low byte
				{0x3809, 1920 & 0xFF},
				// [2:0] Output vertical height high byte
				{0x380a, (1080 >> 8) & 0x7F},
				// [7:0] Output vertical height low byte
				{0x380b, 1080 & 0xFF},

				// HTS line exposure time in # of pixels Tline=HTS/sclk
				{0x380c, (2500 >> 8) & 0x1F},
				{0x380d, 2500 & 0xFF},
				// VTS frame exposure time in # lines
				{0x380e, (1120 >> 8) & 0xFF},
				{0x380f, 1120 & 0xFF},

				// [7:4]=0x1 horizontal odd subsample increment, [3:0]=0x1 horizontal even subsample increment
				{0x3814, 0x11},
				// [7:4]=0x1 vertical odd subsample increment, [3:0]=0x1 vertical even subsample increment
				{0x3815, 0x11},

				// [2]=0 ISP mirror, [1]=0 sensor mirror, [0]=0 no horizontal binning
				{0x3821, 0x00},

				// {0x4805, 0x10}, //LPX global timing select=auto
				// {0x4818, 0x00}, //hs_prepare + hs_zero_min ns
				// {0x4819, 0x96},
				// {0x482A, 0x00}, //hs_prepare + hs_zero_min UI

				// {0x4824, 0x00}, //lpx_p_min ns
				// {0x4825, 0x32},
				// {0x4830, 0x00}, //lpx_p_min UI

				// {0x4826, 0x00}, //hs_prepare_min ns
				// {0x4827, 0x32},
				// {0x4831, 0x00}, //hs_prepare_min UI
				// little MIPI shit: global timing unit, period of PCLK in ns * 2(depends on # of lanes)
				{0x4837, 48}, // 1/42M*2

				// Undocumented anti-green settings
				{0x3618, 0x04},
				{0x3612, 0x59},
				{0x3708, 0x64},
				{0x3709, 0x52},
				{0x370c, 0x03},

				// [7:4]=0x0 Formatter RAW, [3:0]=0x0 BGBG/GRGR
				{0x4300, 0x00},
				// [2:0]=0x3 Format select ISP RAW (DPC)
				{0x501f, 0x03}
		};
		// END 1920 x 1080, RAW10, MIPISCLK=210, SCLK=42MHz, PCLK=42M

		size_t i;
		for (i=0;i<sizeof(init_1080p_15)/sizeof(init_1080p_15[0]); ++i)
		{
			std::cout << i << std::endl;
			writeReg(init_1080p_15[i].addr, init_1080p_15[i].data);
		}

		//[7]=0 Software reset; [6]=0 Software power down; Default=0x02
		writeReg(0x3008, 0x02);
	}//init_resolution_1080p_15

	void init_resolution_1080p_30()
	{
		typedef struct { uint16_t addr; uint8_t data; } config_word_t;
		// START 1920 x 1080 @ 30fps, RAW10, MIPISCLK=420, SCLK=84MHz, PCLK=84M
		config_word_t const init_1080p_30[] =
		{
				//PLL1 configuration
				//[7:4]=0010 System clock divider /2, [3:0]=0001 Scale divider for MIPI /1
				{0x3035, 0x21}, // 30fps setting
		 //{0x3035, 0x31}, // 20fps setting
				//[7:0]=105 PLL multiplier
				{0x3036, 0x69},
				//[4]=0 PLL root divider /1, [3:0]=5 PLL pre-divider /1.5
				{0x3037, 0x05},
				//[5:4]=01 PCLK root divider /2, [3:2]=00 SCLK2x root divider /1, [1:0]=01 SCLK root divider /2
				{0x3108, 0x11},

				//[6:4]=001 PLL charge pump, [3:0]=1010 MIPI 10-bit mode
				{0x3034, 0x1A},

				//[3:0]=0 X address start high byte
				{0x3800, (336 >> 8) & 0x0F},
				//[7:0]=0 X address start low byte
				{0x3801, 336 & 0xFF},
				//[2:0]=0 Y address start high byte
				{0x3802, (426 >> 8) & 0x07},
				//[7:0]=0 Y address start low byte
				{0x3803, 426 & 0xFF},

				//[3:0] X address end high byte
				{0x3804, (2287 >> 8) & 0x0F},
				//[7:0] X address end low byte
				{0x3805, 2287 & 0xFF},
				//[2:0] Y address end high byte
				{0x3806, (1529 >> 8) & 0x07},
				//[7:0] Y address end low byte
				{0x3807, 1529 & 0xFF},

				//[3:0]=0 timing hoffset high byte
				{0x3810, (16 >> 8) & 0x0F},
				//[7:0]=0 timing hoffset low byte
				{0x3811, 16 & 0xFF},
				//[2:0]=0 timing voffset high byte
				{0x3812, (12 >> 8) & 0x07},
				//[7:0]=0 timing voffset low byte
				{0x3813, 12 & 0xFF},

				//[3:0] Output horizontal width high byte
				{0x3808, (1920 >> 8) & 0x0F},
				//[7:0] Output horizontal width low byte
				{0x3809, 1920 & 0xFF},
				//[2:0] Output vertical height high byte
				{0x380a, (1080 >> 8) & 0x7F},
				//[7:0] Output vertical height low byte
				{0x380b, 1080 & 0xFF},

				//HTS line exposure time in # of pixels Tline=HTS/sclk
				{0x380c, (2500 >> 8) & 0x1F},
				{0x380d, 2500 & 0xFF},
				//VTS frame exposure time in # lines
				{0x380e, (1120 >> 8) & 0xFF},
				{0x380f, 1120 & 0xFF},

				//[7:4]=0x1 horizontal odd subsample increment, [3:0]=0x1 horizontal even subsample increment
				{0x3814, 0x11},
				//[7:4]=0x1 vertical odd subsample increment, [3:0]=0x1 vertical even subsample increment
				{0x3815, 0x11},

				//[2]=0 ISP mirror, [1]=0 sensor mirror, [0]=0 no horizontal binning
				{0x3821, 0x00},

		//		{0x4805, 0x10}, //LPX global timing select=auto
		//		{0x4818, 0x00}, //hs_prepare + hs_zero_min ns
		//		{0x4819, 0x96},
		//		{0x482A, 0x00}, //hs_prepare + hs_zero_min UI
		//
		//		{0x4824, 0x00}, //lpx_p_min ns
		//		{0x4825, 0x32},
		//		{0x4830, 0x00}, //lpx_p_min UI
		//
		//		{0x4826, 0x00}, //hs_prepare_min ns
		//		{0x4827, 0x32},
		//		{0x4831, 0x00}, //hs_prepare_min UI
				//little MIPI shit: global timing unit, period of PCLK in ns * 2(depends on # of lanes)
				//{0x4837, 48}, // 1/42M*2
				{0x4837, 24}, // 1/84M*2

				//Undocumented anti-green settings
				{0x3618, 0x04},
				{0x3612, 0x59},
				{0x3708, 0x64},
				{0x3709, 0x52},
				{0x370c, 0x03},

				//[7:4]=0x0 Formatter RAW, [3:0]=0x0 BGBG/GRGR
				{0x4300, 0x00},
				//[2:0]=0x3 Format select ISP RAW (DPC)
				{0x501f, 0x03}
		};
		// END 1920 x 1080, RAW10, MIPISCLK=420, SCLK=84MHz, PCLK=84M */

		size_t i;
		for (i=0;i<sizeof(init_1080p_30)/sizeof(init_1080p_30[0]); ++i)
		{
			std::cout << i << std::endl;
			writeReg(init_1080p_30[i].addr, init_1080p_30[i].data);
		}

		//[7]=0 Software reset; [6]=0 Software power down; Default=0x02
		writeReg(0x3008, 0x02);
	}//init_resolution_1080p_30

	void change_hidden_settings_to_original()
	{
		typedef struct { uint16_t addr; uint8_t data; } config_word_t;
		config_word_t const original_hidden_settings[] =
		{
				{0x3630, 0x36},
				{0x3633, 0x12},
				{0x3731, 0x12},
				//VCM debug mode
				{0x3600, 0x08},
				{0x3636, 0x03},
				{0x3634, 0x40},

				//Undocumented anti-green settings?
				{0x3618, 0x00},
				{0x3612, 0x29},
				{0x3708, 0x62},

				{0x370c, 0x03},
		};

		size_t i;
		for (i=0;i<sizeof(original_hidden_settings)/sizeof(original_hidden_settings[0]); ++i)
		{
			std::cout << i << std::endl;
			writeReg(original_hidden_settings[i].addr, original_hidden_settings[i].data);
		}

		//[7]=0 Software reset; [6]=0 Software power down; Default=0x02
		writeReg(0x3008, 0x02);
	}//change_hidden_settings_to_original

	void change_hidden_settings_to_new()
	{
		typedef struct { uint16_t addr; uint8_t data; } config_word_t;
		config_word_t const new_hidden_settings[] =
		{
				{0x3630, 0x2e}, // Zynqberry & RPi use 0x2e
				{0x3633, 0x23}, // Zynqberry & RPi use 0x23
				//{0x3621, 0xe0}, // Zynqberry uses 0xe1 // Horizontal Binning?
				{0x3731, 0x02}, // Zynqberry & RPi use 0x02
				//VCM debug mode
				{0x3600, 0x37}, // Zynqberry & RPi use 0x37
				//{0x3620, 0x52}, // Zynqberry uses 0x65, RPi uses 0x64 // Vertical Binning?
				{0x3636, 0x06}, // Zynqberry & RPi use 0x06
				{0x3634, 0x44}, // Zynqberry & RPi use 0x44

				//Undocumented anti-green settings?
				{0x3618, 0x04}, // Zynqberry uses 0x04 for full HD // 0x00 removes the weird lines, but add sepia
				{0x3612, 0x59}, // Zynqberry & RPi use 0x59
				{0x3708, 0x64}, // Zynqberry uses 0x64 // 0x62 removes the weird lines, and adds no sepia

				{0x370c, 0x03}, // Zynqberry uses 0x0f
		};

		size_t i;
		for (i=0;i<sizeof(new_hidden_settings)/sizeof(new_hidden_settings[0]); ++i)
		{
			std::cout << i << std::endl;
			writeReg(new_hidden_settings[i].addr, new_hidden_settings[i].data);
		}

		//[7]=0 Software reset; [6]=0 Software power down; Default=0x02
		writeReg(0x3008, 0x02);
	}//change_hidden_settings_to_new

	void change_image_to_rgb()
	{
		typedef struct { uint16_t addr; uint8_t data; } config_word_t;
		config_word_t const rgb_settings[] =
		{
				// [2:0]=0x3 Format select ISP RGB (DPC)
				{0x501f, 0x01}
		};

		size_t i;
		for (i=0;i<sizeof(rgb_settings)/sizeof(rgb_settings[0]); ++i)
		{
			std::cout << i << std::endl;
			writeReg(rgb_settings[i].addr, rgb_settings[i].data);
		}

		//[7]=0 Software reset; [6]=0 Software power down; Default=0x02
		writeReg(0x3008, 0x02);
	}//change_image_to_rgb

	void change_image_to_raw()
	{
		typedef struct { uint16_t addr; uint8_t data; } config_word_t;
		config_word_t const raw_settings[] =
		{
				// [2:0]=0x3 Format select ISP RAW (DPC)
				{0x501f, 0x03}
		};

		size_t i;
		for (i=0;i<sizeof(raw_settings)/sizeof(raw_settings[0]); ++i)
		{
			std::cout << i << std::endl;
			writeReg(raw_settings[i].addr, raw_settings[i].data);
		}

		//[7]=0 Software reset; [6]=0 Software power down; Default=0x02
		writeReg(0x3008, 0x02);
	}//change_image_to_raw

	void enable_advanced_awb()
		{
			typedef struct { uint16_t addr; uint8_t data; } config_word_t;
			config_word_t const awb_settings[] =
			{
					// Enable Advanced AWB
					{0x3406 ,0x00},
					{0x5192 ,0x04},
					{0x5191 ,0xf8},
					{0x518d ,0x26},
					{0x518f ,0x42},
					{0x518e ,0x2b},
					{0x5190 ,0x42},
					{0x518b ,0xd0},
					{0x518c ,0xbd},
					{0x5187 ,0x18},
					{0x5188 ,0x18},
					{0x5189 ,0x56},
					{0x518a ,0x5c},
					{0x5186 ,0x1c},
					{0x5181 ,0x50},
					{0x5184 ,0x20},
					{0x5182 ,0x11},
					{0x5183 ,0x00},
					{0x5001 ,0x03}
			};

			size_t i;
			for (i=0;i<sizeof(awb_settings)/sizeof(awb_settings[0]); ++i)
			{
				std::cout << i << std::endl;
				writeReg(awb_settings[i].addr, awb_settings[i].data);
			}

			//[7]=0 Software reset; [6]=0 Software power down; Default=0x02
			writeReg(0x3008, 0x02);
		}//enable_advanced_awb

	void enable_simple_awb()
		{
			typedef struct { uint16_t addr; uint8_t data; } config_word_t;
			config_word_t const awb_settings[] =
			{
					// Disable Advanced AWB
					{0x518d ,0x00},
					{0x518f ,0x20},
					{0x518e ,0x00},
					{0x5190 ,0x20},
					{0x518b ,0x00},
					{0x518c ,0x00},
					{0x5187 ,0x10},
					{0x5188 ,0x10},
					{0x5189 ,0x40},
					{0x518a ,0x40},
					{0x5186 ,0x10},
					{0x5181 ,0x58},
					{0x5184 ,0x25},
					{0x5182 ,0x11},

					// Enable simple AWB
					{0x3406 ,0x00},
					{0x5183 ,0x80},
					{0x5191 ,0xff},
					{0x5192 ,0x00},
					{0x5001 ,0x03}
			};

			size_t i;
			for (i=0;i<sizeof(awb_settings)/sizeof(awb_settings[0]); ++i)
			{
				std::cout << i << std::endl;
				writeReg(awb_settings[i].addr, awb_settings[i].data);
			}

			//[7]=0 Software reset; [6]=0 Software power down; Default=0x02
			writeReg(0x3008, 0x02);
		}//enable_simple_awb

	void disable_awb()
		{
			typedef struct { uint16_t addr; uint8_t data; } config_word_t;
			config_word_t const awb_settings[] =
			{
					{0x5001 ,0x02}
			};

			size_t i;
			for (i=0;i<sizeof(awb_settings)/sizeof(awb_settings[0]); ++i)
			{
				std::cout << i << std::endl;
				writeReg(awb_settings[i].addr, awb_settings[i].data);
			}

			//[7]=0 Software reset; [6]=0 Software power down; Default=0x02
			writeReg(0x3008, 0x02);
		}//disable_awb

	~OV5640() { }

	void readReg(uint16_t reg_addr, uint8_t& buf)
	{
		for(auto retry_count = retry_count_; retry_count > 0; --retry_count)
		{
			try
			{
				auto buf_addr = std::vector<uint8_t>{(uint8_t)(reg_addr>>8), (uint8_t)reg_addr};
				iic_.write(dev_address_, buf_addr.data(), buf_addr.size());
				iic_.read(dev_address_, &buf, 1);
				break; //If no exceptions, no mo retries
			}
			catch (I2C_Client::TransmitError const& e)
			{
				if (retry_count > 0)
				{
					continue;
				}
				else
				{
					throw HardwareError(HardwareError::IIC_NACK, e.what());
				}
			}
		}
	}
	void writeReg(uint16_t reg_addr, uint8_t const reg_data)
	{
		for(auto retry_count = retry_count_; retry_count > 0; --retry_count)
		{
			try
			{
				auto buf = std::vector<uint8_t>{(uint8_t)(reg_addr>>8), (uint8_t)reg_addr, reg_data};
				iic_.write(dev_address_, buf.data(), buf.size());
				break; //If no exceptions, no mo retries
			}
			catch (I2C_Client::TransmitError const& e)
			{
				if (retry_count > 0) continue;
				else throw HardwareError(HardwareError::IIC_NACK, e.what());
			}
		}
	}

	void writeRegLiquid(uint8_t const reg_data)
		{
			for(auto retry_count = retry_count_; retry_count > 0; --retry_count)
			{
				try
				{
					auto buf = std::vector<uint8_t>{reg_data};
					iic_.write(dev_address2_, buf.data(), buf.size());
					break; //If no exceptions, no mo retries
				}
				catch (I2C_Client::TransmitError const& e)
				{
					if (retry_count > 0) continue;
					else throw HardwareError(HardwareError::IIC_NACK, e.what());
				}
			}
		}
private:
  I2C_Client& iic_;
  GPIO_Client& gpio_;
  uint8_t dev_address_ = (0x78 >> 1);
  uint8_t dev_address2_ = (0x46 >> 1);
  uint8_t const dev_ID_h_ = 0x56;
  uint8_t const dev_ID_l_ = 0x40;
  uint16_t const reg_ID_h = 0x300A;
  uint16_t const reg_ID_l = 0x300B;
  uint const retry_count_ = 10;
};

} /* namespace digilent */

#endif /* OV5640_H_ */
