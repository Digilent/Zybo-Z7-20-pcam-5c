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
	  try {
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
	    typedef struct { uint16_t addr; uint8_t data; } config_word_t;
	    config_word_t const init[] =
	    {
	      //[7]=0 Software reset; [6]=1 Software power down; Default=0x02
	      {0x3008, 0x42},
	      //[1]=1 Select system input clock from PLL; [0]=1 ???; Default=0x00
	      {0x3103, 0x03},
	      //[3:0]=0000 MD2P,MD2N,MCP,MCN input; Default=0x00
	      {0x3017, 0x00},
	      //[7:2]=000000 MD1P,MD1N, D3:0 input; Default=0x00
	      {0x3018, 0x00},
	      //[6:4]=001 PLL charge pump, [3:0]=1000 MIPI 8-bit mode
	      {0x3034, 0x18},

//              +----------------+        +------------------+         +---------------------+        +---------------------+
//XVCLK         | PRE_DIV0       |        | Mult (4+252)     |         | Sys divider         |        | MIPI divider        |
//+-------+-----> 3037[3:0]=0001 +--------> 3026[7:0]=0x38   +---------> 3035[7:4]=0001 (+1) +--------> 3035[3:0]=0001 (+1) |
//12MHz   |     | / 1            | 12MHz  | * 56             | 672MHz  | / 2                 | 336MHz | / 1                 |
//        |     +----------------+        +------------------+         +----------+----------+        +----------+----------+
//        |                                                                       |                              |
//        |                                                                       |                      MIPISCLK|336MHz
//        |                                                                       |                              |
//        |     +----------------+        +------------------+         +----------v----------+        +----------v----------+
//        |     | PRE_DIVSP      |        | R_DIV_SP         |         | PLL R divider       |        | MIPI PHY            | MIPI_CLK
//        +-----> 303d[5:4]=01   +--------> 303d[2]=0 (+1)   |         | 3037[4]=1 (+1)      |        |                     +------->
//              | / 1.5          |  8MHz  | / 1              |         | / 2                 |        | / 2                 | 168MHz
//              +----------------+        +---------+--------+         +----------+----------+        +---------------------+
//                                                  |                             |
//                                                  |                             |
//                                                  |                             |
//              +----------------+        +---------v--------+         +----------v----------+        +---------------------+
//              | SP divider     |        | Mult             |         | BIT div (MIPI 8/10) |        | SCLK divider        | SCLK
//              | 303c[3:0]=0x1  +<-------+ 303b[4:0]=0x19   |         | 3034[3:0]=0x8)      +----+---> 3108[1:0]=01 (2^)   +------->
//              | / 1            | 200MHz | * 25             |         | / 2                 |    |   | / 2                 | 42MHz
//              +--------+-------+        +------------------+         +----------+----------+    |   +---------------------+
//                       |                                                        |               |
//                       |                                                        |               |
//                       |                                                        |               |
//              +--------v-------+                                     +----------v----------+    |   +---------------------+
//              | R_SELD5 div    | ADCCLK                              | PCLK div            |    |   | SCLK2x divider      |
//              | 303d[1:0]=001  +------->                             | 3108[5:4]=00 (2^)   |    +---> 3108[3:2]=00 (2^)   +------->
//              | / 1            | 200MHz                              | / 1                 |        | / 1                 | 84MHz
//              +----------------+                                     +----------+----------+        +---------------------+
//                                                                                |
//                                                                                |
//                                                                                |
//                                                                     +----------v----------+        +---------------------+
//                                                                     | P divider (* #lanes)| PCLK   | Scale divider       |
//                                                                     | 3035[3:0]=0001      +--------> 3824[4:0]           |
//                                                                     | / 1                 | 84MHz  | / 2                 |
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

	      {0x3630, 0x36},
	      {0x3631, 0x0e},
	      {0x3632, 0xe2},
	      {0x3633, 0x12},
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
	      {0x3731, 0x12},
	      //VCM debug mode
	      {0x3600, 0x08},
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
	      {0x3636, 0x03},
	      {0x3634, 0x40},
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
	      {0x3820, 0x41},
	      {0x3821, 0x07},

	      //[7]=1 color bar enable, [3:2]=00 eight color bar
	      {0x503d, 0x00},

//	      //640x480
//	      //[3:0]=0 X address start high byte
//	      {0x3800, 0x00},
//	      //[7:0]=0 X address start low byte
//	      {0x3801, 0x10},
//	      //[2:0]=0 Y address start high byte
//	      {0x3802, 0x00},
//	      //[7:0]=0 Y address start low byte
//	      {0x3803, 0x0e},
//	      //[3:0] X address end high byte (0xA3F=2623)
//	      {0x3804, 0x02},
//	      //[7:0] X address end low byte
//	      {0x3805, 0xaf},
//	      //[2:0] Y address end high byte (0x79F=1951)
//	      {0x3806, 0x01},
//	      //[7:0] Y address end low byte
//	      {0x3807, 0xf5},
//	      //[3:0] Output horizontal width high byte (0x780=1920)
//	      {0x3808, 0x02},
//	      //[7:0] Output horizontal width low byte
//	      {0x3809, 0x80},
//	      //[2:0] Output vertical height high byte (0x438=1080)
//	      {0x380a, 0x01},
//	      //[7:0] Output vertical height low byte
//	      {0x380b, 0xe0},
//
//	      {0x380c, 0x07},
//	      {0x380d, 0x68},
//	      {0x380e, 0x03},
//	      //{0x380e, 0x07},
//	      {0x380f, 0xd8},
//	      //{0x380f, 0x9f},

	      //[2]=1 ISP vflip, [1]=0 sensor vflip
	      {0x3820, 0x46},
	      //[2]=1 ISP mirror, [1]=0 sensor mirror
	      {0x3821, 0x00},
	      //1920x1080
	      //[3:0]=0 X address start high byte
	      {0x3800, 0x01},
	      //[7:0]=0 X address start low byte
	      {0x3801, 0x50},
	      //[2:0]=0 Y address start high byte
	      {0x3802, 0x01},
	      //[7:0]=0 Y address start low byte
	      {0x3803, 0xae},
	      //[3:0] X address end high byte (0xA3F=2623)
	      {0x3804, 0x08},
	      //[7:0] X address end low byte
	      {0x3805, 0xef},
	      //[2:0] Y address end high byte (0x79F=1951)
	      {0x3806, 0x05},
	      //[7:0] Y address end low byte
	      {0x3807, 0xf1},
	      //[3:0] Output horizontal width high byte (0x780=1920)
	      {0x3808, 0x07},
	      //[7:0] Output horizontal width low byte
	      {0x3809, 0x80},
	      //[2:0] Output vertical height high byte (0x438=1080)
	      {0x380a, 0x04},
	      //[7:0] Output vertical height low byte
	      {0x380b, 0x38},

	      //h-size=2423
	      {0x380c, 0x09},
	      {0x380d, 0x77},
	      //v-size=1226
	      {0x380e, 0x04},
	      {0x380f, 0xca},

	      //[3:0]=0 timing hoffset high byte (0x010)
	      {0x3810, 0x00},
	      //[7:0]=0 timing hoffset low byte
	      {0x3811, 0x10},
	      //[2:0]=0 timing voffset high byte (0x004)
	      {0x3812, 0x00},
	      //[7:0]=0 timing voffset low byte
	      {0x3813, 0x06},

//	      //1280 x 720
//	      //[3:0]=0 X address start high byte
//	      {0x3800, 0x02},
//	      //[7:0]=0 X address start low byte
//	      {0x3801, 0x90},
//	      //[2:0]=0 Y address start high byte
//	      {0x3802, 0x02},
//	      //[7:0]=0 Y address start low byte
//	      {0x3803, 0x62},
//	      //[3:0] X address end high byte (0xA3F=2623)
//	      {0x3804, 0x07},
//	      //[7:0] X address end low byte
//	      {0x3805, 0xaf},
//	      //[2:0] Y address end high byte (0x79F=1951)
//	      {0x3806, 0x05},
//	      //[7:0] Y address end low byte
//	      {0x3807, 0x3d},
//	      //[3:0] Output horizontal width high byte (0x780=1920)
//	      {0x3808, 0x05},
//	      //[7:0] Output horizontal width low byte
//	      {0x3809, 0x00},
//	      //[2:0] Output vertical height high byte (0x438=1080)
//	      {0x380a, 0x02},
//	      //[7:0] Output vertical height low byte
//	      {0x380b, 0xd0},
//
//	      //h-size=2423
//	      {0x380c, 0x09},
//	      {0x380d, 0x77},
//	      //v-size=1226
//	      {0x380e, 0x04},
//	      {0x380f, 0xca},
//
//	      //[3:0]=0 timing hoffset high byte (0x010)
//	      {0x3810, 0x00},
//	      //[7:0]=0 timing hoffset low byte
//	      {0x3811, 0x10},
//	      //[2:0]=0 timing voffset high byte (0x004)
//	      {0x3812, 0x00},
//	      //[7:0]=0 timing voffset low byte
//	      {0x3813, 0x06},

	      //[7:4]=0x1 horizontal odd subsample increment, [3:0]=0x1 horizontal even subsample increment
	      {0x3814, 0x11},
	      //[7:4]=0x1 vertical odd subsample increment, [3:0]=0x1 vertical even subsample increment
	      {0x3815, 0x11},

//	      {0x3618, 0x00},
//	      {0x3612, 0x29},
//	      {0x3708, 0x64},
//	      {0x3709, 0x52},
//	      {0x370c, 0x03},
//	      {0x3a02, 0x03},
//	      {0x3a03, 0xd8},
//	      {0x3a08, 0x01},
//	      {0x3a09, 0x27},
//	      {0x3a0a, 0x00},
//	      {0x3a0b, 0xf6},
//	      {0x3a0e, 0x03},
//	      {0x3a0d, 0x04},
//	      {0x3a14, 0x03},
//	      {0x3a15, 0xd8},
//	      {0x4001, 0x02},
//	      {0x4004, 0x02},
//	      {0x3000, 0x00},
//	      {0x3002, 0x1c},
//	      {0x3004, 0xff},
//	      {0x3006, 0xc3},
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
	      {0x4300, 0x6f},
	      {0x501f, 0x01},

	      {0x4713, 0x03},
	      {0x4407, 0x04},
	      {0x440e, 0x00},
	      {0x460b, 0x35},
	      {0x460c, 0x22},
	      {0x3824, 0x02},

	      //little MIPI shit: global timing unit, period of PCLK in ns (depends on # of lanes)
	      {0x4837, 0x0c}, //12ns (PCLK=84MHz)
	      //MIPI timing
	      {0x4818, 0x00},
	      {0x4819, 0x96}, //HS Zero = 150 ns (although it seems to be HS Prepare + HS Zero
	      {0x482a, 0x06}, //HS Zero += 6 UI

	      {0x4826, 0x00},
	      {0x4827, 0x32}, //HS Prepare = 50 ns
	      {0x4831, 0x04}, //HS Prepare += 4 UI

	      //[7]=1 LENC correction enabled, [5]=1 RAW gamma enabled, [2]=1 Black pixel cancellation enabled, [1]=1 White pixel cancellation enabled, [0]=1 Color interpolation enabled
	      //{0x5000, 0xa7},
	      {0x5000, 0x03},
	      //[7]=0 Special digital effects, [5]=0 scaling, [2]=0 UV average disabled, [1]=1 Color matrix enabled, [0]=1 Auto white balance enabled
	      {0x5001, 0x03},
	      //{0x5001, 0x02},

//	      {0x5180, 0xff},
//	      {0x5181, 0xf2},
//	      {0x5182, 0x00},
//	      {0x5183, 0x14},
//	      {0x5184, 0x25},
//	      {0x5185, 0x24},
//	      {0x5186, 0x09},
//	      {0x5187, 0x09},
//	      {0x5188, 0x09},
//	      {0x5189, 0x75},
//	      {0x518a, 0x54},
//	      {0x518b, 0xe0},
//	      {0x518c, 0xb2},
//	      {0x518d, 0x42},
//	      {0x518e, 0x3d},
//	      {0x518f, 0x56},
//	      {0x5190, 0x46},
//	      {0x5191, 0xf8},
//	      {0x5192, 0x04},
//	      {0x5193, 0x70},
//	      {0x5194, 0xf0},
//	      {0x5195, 0xf0},
//	      {0x5196, 0x03},
//	      {0x5197, 0x01},
//	      {0x5198, 0x04},
//	      {0x5199, 0x12},
//	      {0x519a, 0x04},
//	      {0x519b, 0x00},
//	      {0x519c, 0x06},
//	      {0x519d, 0x82},
//	      {0x519e, 0x38},

//	      //Color matrix
//	      {0x5381, 0x1e},
//	      {0x5382, 0x5b},
//	      {0x5383, 0x08},
//	      {0x5384, 0x0a},
//	      {0x5385, 0x7e},
//	      {0x5386, 0x88},
//	      {0x5387, 0x7c},
//	      {0x5388, 0x6c},
//	      {0x5389, 0x10},
//	      {0x538a, 0x01},
//	      {0x538b, 0x98},

//	      {0x5300, 0x08},
//	      {0x5301, 0x30},
//	      {0x5302, 0x10},
//	      {0x5303, 0x00},
//	      {0x5304, 0x08},
//	      {0x5305, 0x30},
//	      {0x5306, 0x08},
//	      {0x5307, 0x16},
//	      {0x5309, 0x08},
//	      {0x530a, 0x30},
//	      {0x530b, 0x04},
//	      {0x530c, 0x06},
//	      {0x5480, 0x01},
//	      {0x5481, 0x08},
//	      {0x5482, 0x14},
//	      {0x5483, 0x28},
//	      {0x5484, 0x51},
//	      {0x5485, 0x65},
//	      {0x5486, 0x71},
//	      {0x5487, 0x7d},
//	      {0x5488, 0x87},
//	      {0x5489, 0x91},
//	      {0x548a, 0x9a},
//	      {0x548b, 0xaa},
//	      {0x548c, 0xb8},
//	      {0x548d, 0xcd},
//	      {0x548e, 0xdd},
//	      {0x548f, 0xea},
//	      {0x5490, 0x1d},
//	      {0x5580, 0x02},
//	      {0x5583, 0x40},
//	      {0x5584, 0x10},
//	      {0x5589, 0x10},
//	      {0x558a, 0x00},
//	      {0x558b, 0xf8},
//	      {0x5800, 0x23},
//	      {0x5801, 0x14},
//	      {0x5802, 0x0f},
//	      {0x5803, 0x0f},
//	      {0x5804, 0x12},
//	      {0x5805, 0x26},
//	      {0x5806, 0x0c},
//	      {0x5807, 0x08},
//	      {0x5808, 0x05},
//	      {0x5809, 0x05},
//	      {0x580a, 0x08},
//	      {0x580b, 0x0d},
//	      {0x580c, 0x08},
//	      {0x580d, 0x03},
//	      {0x580e, 0x00},
//	      {0x580f, 0x00},
//	      {0x5810, 0x03},
//	      {0x5811, 0x09},
//	      {0x5812, 0x07},
//	      {0x5813, 0x03},
//	      {0x5814, 0x00},
//	      {0x5815, 0x01},
//	      {0x5816, 0x03},
//	      {0x5817, 0x08},
//	      {0x5818, 0x0d},
//	      {0x5819, 0x08},
//	      {0x581a, 0x05},
//	      {0x581b, 0x06},
//	      {0x581c, 0x08},
//	      {0x581d, 0x0e},
//	      {0x581e, 0x29},
//	      {0x581f, 0x17},
//	      {0x5820, 0x11},
//	      {0x5821, 0x11},
//	      {0x5822, 0x15},
//	      {0x5823, 0x28},
//	      {0x5824, 0x46},
//	      {0x5825, 0x26},
//	      {0x5826, 0x08},
//	      {0x5827, 0x26},
//	      {0x5828, 0x64},
//	      {0x5829, 0x26},
//	      {0x582a, 0x24},
//	      {0x582b, 0x22},
//	      {0x582c, 0x24},
//	      {0x582d, 0x24},
//	      {0x582e, 0x06},
//	      {0x582f, 0x22},
//	      {0x5830, 0x40},
//	      {0x5831, 0x42},
//	      {0x5832, 0x24},
//	      {0x5833, 0x26},
//	      {0x5834, 0x24},
//	      {0x5835, 0x22},
//	      {0x5836, 0x22},
//	      {0x5837, 0x26},
//	      {0x5838, 0x44},
//	      {0x5839, 0x24},
//	      {0x583a, 0x26},
//	      {0x583b, 0x28},
//	      {0x583c, 0x42},
//	      {0x583d, 0xce},
//	      {0x5025, 0x00},
//	      {0x3a0f, 0x30},
//	      {0x3a10, 0x28},
//	      {0x3a1b, 0x30},
//	      {0x3a1e, 0x26},
//	      {0x3a11, 0x60},
//	      {0x3a1f, 0x14},
	      {0x3008, 0x02}
	    };
	    size_t i;
	    for (i=0;i<sizeof(init)/sizeof(init[0]); ++i)
	    {
		std::cout << i << std::endl;
		writeReg(init[i].addr, init[i].data);
	    }
	  }
	  catch (I2C_Client::TransmitError const& e)
	  {
	      throw HardwareError(HardwareError::IIC_NACK, e.what());
	  }
	}
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
				if (retry_count > 0) continue;
				else throw HardwareError(HardwareError::IIC_NACK, e.what());
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
private:
  I2C_Client& iic_;
  GPIO_Client& gpio_;
  uint8_t dev_address_ = (0x78 >> 1);
  uint8_t const dev_ID_h_ = 0x56;
  uint8_t const dev_ID_l_ = 0x40;
  uint16_t const reg_ID_h = 0x300A;
  uint16_t const reg_ID_l = 0x300B;
  uint const retry_count_ = 10;
};

} /* namespace digilent */

#endif /* OV5640_H_ */
