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
    VideoOutput(u32 VTC_dev_id, u32 clk_wiz_baseaddr) :
      clk_wiz_baseaddr_(clk_wiz_baseaddr)
    {
      {//VTC Init
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

	XVtc_Reset(&sVtc_);
      }
    }

    void ChangeResolution(Resolution res)
    {
      size_t i;
      for (i = 0; i < sizeof(timing)/sizeof(timing[0]); i++)
      {
	if (timing[i].res == res) break;
      }
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
	  XVtc_EnableGenerator(&sVtc_);

	  u32 mul = 33, divclk = 8, clkout_div0 = 33;
	  switch (timing[i].pclk_freq_Hz)
	  {
	    case 148500000:
	      mul = 26; divclk = 5; clkout_div0 = 7;
	      break;
	    case 74250000:
	      mul = 26; divclk = 5; clkout_div0 = 14;
	      break;
	    case 25000000:
	      mul = 33; divclk = 8; clkout_div0 = 33;
	      break;
	  }

	  Xil_Out32(clk_wiz_baseaddr_ + 0x0, 0x0000000A); //Reset
	  while (!(Xil_In32(clk_wiz_baseaddr_ + 0x4) & 0x1)); //Wait for lock before we can reconfigure
	  Xil_Out32(clk_wiz_baseaddr_ + 0x200, ((u32)mul << 8) | divclk); //DIVCLK=3, MUL=49, integers only
	  Xil_Out32(clk_wiz_baseaddr_ + 0x208, clkout_div0); //CLKOUT_DIVIDE0=11, integer
	  Xil_Out32(clk_wiz_baseaddr_ + 0x25C, 0x00000007); //Load configuration
	  Xil_Out32(clk_wiz_baseaddr_ + 0x25C, 0x00000002); //Idle
	  while (!(Xil_In32(clk_wiz_baseaddr_ + 0x4) & 0x1)); //Wait for lock

	}
    }
    ~VideoOutput() = default;
  private:
    XVtc sVtc_;
    uint32_t clk_wiz_baseaddr_;
  };

} /* namespace digilent */

#endif /* VIDEOSOURCE_H_ */
