/******************************************************************************
*
* Copyright (C) 2010 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

#include <stdio.h>

#include "xparameters.h"
#include "xil_cache.h"
#include "xil_exception.h"
#include "platform_config.h"
#include "xil_misc_psreset_api.h"

#ifdef STDOUT_IS_16550
#include "xuartns550_l.h"
#elif STDOUT_IS_PS
#include "xuartps.h"
#endif

#define SLCR_LOCK_ADDR                  (XPS_SYS_CTRL_BASEADDR + 0x4)
#define SLCR_UNLOCK_ADDR                (XPS_SYS_CTRL_BASEADDR + 0x8)
#define SLCR_PSS_RST_CTRL_ADDR			(XPS_SYS_CTRL_BASEADDR + 0x200)
#define SOFT_RST_MASK					(0x00000001)
#define SLCR_LOCK_KEY_VALUE             0x767B
#define SLCR_UNLOCK_KEY_VALUE           0xDF0D
#define FPGA_RST_CTRL							0x240


/*
 * Issue software system reset
 */
void ps_reset()
{
	Xil_ExceptionDisable();
	//Wait until UART1 TX FIFO empties (so that we see the last error message on the terminal
	fflush(stdout);
	while (!(Xil_In32(0xE000102C) & 0x00000008)) ;
	//Issue software reset
	*(volatile unsigned int *)(SLCR_UNLOCK_ADDR) = SLCR_UNLOCK_KEY_VALUE;
	*(volatile unsigned int *)(SLCR_PSS_RST_CTRL_ADDR) = SOFT_RST_MASK;
	*(volatile unsigned int *)(SLCR_LOCK_ADDR) = SLCR_LOCK_KEY_VALUE;
}

void
enable_caches()
{
#ifdef __PPC__
    Xil_ICacheEnableRegion(XPAR_CACHEABLE_REGION_MASK);
    Xil_DCacheEnableRegion(CACHEABLE_REGION_MASK);
#elif __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_ICACHE 
    Xil_ICacheEnable();
#endif
#ifdef XPAR_MICROBLAZE_USE_DCACHE 
    Xil_DCacheEnable();
#endif
#elif __arm__
    // For ARM, BSP enables caches by default.
#endif
}

void
disable_caches()
{
    Xil_DCacheDisable();
    Xil_ICacheDisable();
}

void
init_platform()
{
   enable_caches();

    Xil_Out32(XSLCR_UNLOCK_ADDR, XSLCR_UNLOCK_CODE);
    //Reset PL
    Xil_Out32(XSLCR_BASEADDR+FPGA_RST_CTRL, 0x0);
    Xil_Out32(XSLCR_BASEADDR+FPGA_RST_CTRL, 0x1);
    Xil_Out32(XSLCR_BASEADDR+FPGA_RST_CTRL, 0x0);

    Xil_Out32(XSLCR_BASEADDR+0x4, 0x767B); //Lock back XSLCR


    /* if we have a uart 16550, then that needs to be initialized */
#ifdef STDOUT_IS_16550
    XUartNs550_SetBaud(STDOUT_BASEADDR, XPAR_XUARTNS550_CLOCK_HZ, 9600);
    XUartNs550_SetLineControlReg(STDOUT_BASEADDR, XUN_LCR_8_DATA_BITS);
#elif STDOUT_IS_PS
    // PS UART controller is configured by ps7_init
    // Default is 115200,8,N,1
#endif
}

void flush_dcache()
{
	Xil_DCacheFlush();
}

void
cleanup_platform()
{
    disable_caches();
}
