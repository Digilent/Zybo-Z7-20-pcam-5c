/*
 * VideoSource.h
 *
 *  Created on: Aug 30, 2016
 *      Author: Elod
 */

#ifndef VIDEOSOURCE_H_
#define VIDEOSOURCE_H_

#include <stdint.h>
#include <stdexcept>
#include <cstring>

#include "xaxivdma.h"
#include "xvtc.h"
#include "xclk_wiz.h"

#define STRINGIZE(x) STRINGIZE2(x)
#define STRINGIZE2(x) #x
#define LINE_STRING STRINGIZE(__LINE__)

namespace digilent {

enum class Resolution
{
	R1920_1080_60_PP = 0,
	R1280_720_60_PP,
	R640_480_60_NN
};

typedef struct
{
	enum Polarity {NEG=0, POS=1};
	Resolution res;
	uint16_t h_active, h_fp, h_sync, h_bp;
	Polarity h_pol;
	uint16_t v_active, v_fp, v_sync, v_bp;
	Polarity v_pol;
	uint32_t pclk_freq_Hz;

} timing_t;

timing_t const timing[] = {
		{Resolution::R1920_1080_60_PP, 1920, 88, 44, 148, timing_t::POS, 1080, 4, 5, 36, timing_t::POS, 148500000},
		{Resolution::R1280_720_60_PP, 1280, 110, 40, 220, timing_t::POS, 720, 5, 5, 20, timing_t::POS, 74250000},
		{Resolution::R640_480_60_NN, 640, 16, 96, 48, timing_t::NEG, 480, 10, 2, 33, timing_t::NEG, 25000000}
};

class VideoOutput
{
public:
	VideoOutput(u32 VTC_dev_id, u32 clkwiz_dev_id)
	{
		XVtc_Config *psVtcConfig;
		XStatus Status;

		psVtcConfig = XVtc_LookupConfig(VTC_dev_id);
		if (NULL == psVtcConfig) {
			throw std::runtime_error(__FILE__ ":" LINE_STRING);
		}

		Status = XVtc_CfgInitialize(&sVtc_, psVtcConfig, psVtcConfig->BaseAddress);
		if (Status != XST_SUCCESS) {
			throw std::runtime_error(__FILE__ ":" LINE_STRING);
		}


		XClk_Wiz_Config *psClkWizConfig;
		psClkWizConfig = XClk_Wiz_LookupConfig(clkwiz_dev_id);
		if (NULL == psClkWizConfig) {
			throw std::runtime_error(__FILE__ ":" LINE_STRING);
		}

		Status = XClk_Wiz_CfgInitialize(&sClkWiz_, psClkWizConfig, psClkWizConfig->BaseAddr);
		if (Status != XST_SUCCESS) {
			throw std::runtime_error(__FILE__ ":" LINE_STRING);
		}
		//Reset clock to hardware default
		XClk_Wiz_WriteReg(sClkWiz_.Config.BaseAddr, 0x0, 0x0000000A);
		//Wait for lock because we will need it later for initializing other IP
		while (!(XClk_Wiz_ReadReg(sClkWiz_.Config.BaseAddr, 0x4) & 0x1));

	}

	void reset()
	{
		XVtc_Reset(&sVtc_);
	}

	void configure(Resolution res)
	{
		size_t i;
		for (i = 0; i < sizeof(timing)/sizeof(timing[0]); i++)
		{
			if (timing[i].res == res) break;
		}

//		Configure video clock generator first, since losing clock will reset all IP connected to it
		u32 divclk = 8;
		double mul = 33.0, clkout_div0 = 33.0;
		switch (timing[i].pclk_freq_Hz)
		{
		case 148500000:
			//Factors for 742.5 MHz
			mul = 37.125; divclk = 5; clkout_div0 = 1.0;
			break;
		case 74250000:
			//Factors for 371.25 MHz
			mul = 37.125; divclk = 4; clkout_div0 = 2.5;
			break;
		case 25000000:
			//Factors for 125 MHz
			mul = 10.0; divclk = 1; clkout_div0 = 8.0;
			break;
		}
		Xil_AssertVoid(mul < 256.0); //one byte limit for integer part
		uint16_t mul_frac = (uint16_t)((mul-(uint8_t)mul)*1000);
		uint8_t mul_int = (uint8_t)mul;
		Xil_AssertVoid(mul_frac <= 875); //MMCME2 limit
		XClk_Wiz_WriteReg(sClkWiz_.Config.BaseAddr, 0x200, ((mul_frac & 0x3FF) << 16) | ((mul_int & 0xFF) << 8) | (divclk & 0xFF));

		Xil_AssertVoid(clkout_div0 < 256.0); //one byte limit for integer part
		uint16_t clkout_div0_frac = (uint16_t)((clkout_div0-(uint8_t)clkout_div0)*1000);
		uint8_t clkout_div0_int = (uint8_t)clkout_div0;
		XClk_Wiz_WriteReg(sClkWiz_.Config.BaseAddr, 0x208, ((clkout_div0_frac & 0x3FF) << 8)| (clkout_div0_int & 0xFF));

		XClk_Wiz_WriteReg(sClkWiz_.Config.BaseAddr, 0x25C, 0x00000003); //Load configuration
		while (!(XClk_Wiz_ReadReg(sClkWiz_.Config.BaseAddr, 0x4) & 0x1)); //Wait for lock


		if (i < sizeof(timing)/sizeof(timing[0]))
		{
			XVtc_Timing sTiming = {}; //Will init to 0 (C99 6.7.8.21)
			sTiming.HActiveVideo 	= timing[i].h_active;
			sTiming.HFrontPorch 	= timing[i].h_fp;
			sTiming.HBackPorch 	= timing[i].h_bp;
			sTiming.HSyncWidth 	= timing[i].h_sync;
			sTiming.HSyncPolarity	= (u16)timing[i].h_pol;
			sTiming.VActiveVideo 	= timing[i].v_active;
			sTiming.V0FrontPorch 	= timing[i].v_fp;
			sTiming.V0BackPorch 	= timing[i].v_bp;
			sTiming.V0SyncWidth 	= timing[i].v_sync;
			sTiming.VSyncPolarity	= (u16)timing[i].v_pol;
			XVtc_SetGeneratorTiming(&sVtc_, &sTiming);
			XVtc_RegUpdateEnable(&sVtc_);

		}
	}
	void enable()
	{
		XVtc_EnableGenerator(&sVtc_);
	}
	~VideoOutput() = default;
private:
	XVtc sVtc_;
	XClk_Wiz sClkWiz_;
};

} /* namespace digilent */

#endif /* VIDEOSOURCE_H_ */
