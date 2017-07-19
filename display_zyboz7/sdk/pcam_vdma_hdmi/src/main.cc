#include "xparameters.h"

#include "platform/platform.h"
#include "ov5640/OV5640.h"
#include "ov5640/ScuGicInterruptController.h"
#include "ov5640/PS_GPIO.h"
#include "ov5640/AXI_VDMA.h"
#include "ov5640/PS_IIC.h"


#define IRPT_CTL_DEVID 		XPAR_PS7_SCUGIC_0_DEVICE_ID
#define GPIO_DEVID			XPAR_PS7_GPIO_0_DEVICE_ID
#define GPIO_IRPT_ID			XPAR_PS7_GPIO_0_INTR
#define CAM_I2C_DEVID		XPAR_PS7_I2C_0_DEVICE_ID
#define CAM_I2C_IRPT_ID		XPAR_PS7_I2C_0_INTR
#define VDMA_DEVID			XPAR_AXIVDMA_0_DEVICE_ID
#define VDMA_MM2S_IRPT_ID	XPAR_FABRIC_AXI_VDMA_0_MM2S_INTROUT_INTR
#define VDMA_S2MM_IRPT_ID	XPAR_FABRIC_AXI_VDMA_0_S2MM_INTROUT_INTR
#define CAM_I2C_SCLK_RATE	100000

#define DDR_BASE_ADDR		XPAR_DDR_MEM_BASEADDR
#define MEM_BASE_ADDR		(DDR_BASE_ADDR + 0x0A000000)

using namespace digilent;

int main()
{
	init_platform();

	ScuGicInterruptController irpt_ctl(IRPT_CTL_DEVID);
	PS_GPIO<ScuGicInterruptController> gpio_driver(GPIO_DEVID, irpt_ctl, GPIO_IRPT_ID);
	PS_IIC<ScuGicInterruptController> iic_driver(CAM_I2C_DEVID, irpt_ctl, CAM_I2C_IRPT_ID, 100000);
	OV5640 cam(iic_driver, gpio_driver);
	AXI_VDMA<ScuGicInterruptController> vdma_driver(VDMA_DEVID, MEM_BASE_ADDR, irpt_ctl,
			VDMA_MM2S_IRPT_ID,
			VDMA_S2MM_IRPT_ID);

	xil_printf("Cam init starting.\r\n");
	cam.init();
	xil_printf("Cam init done.\r\n");
	VideoOutput vid(XPAR_VTC_0_DEVICE_ID, XPAR_PIXELCLK_GENERATOR_BASEADDR);
	vid.ChangeResolution(Resolution::R1920_1080_60_PP);
	vdma_driver.enableRead(timing[0].h_active, timing[0].v_active);
	vdma_driver.enableWrite(timing[0].h_active, timing[0].v_active);
	xil_printf("Video init done.\r\n");


	// Liquid lens control
	uint8_t read_char1, read_char2 = 0;
	cam.writeRegLiquid((uint8_t) 144);
	xil_printf("\r\nWrote to liquid lens controller: %x", (uint8_t) 144);

	while (1) {
		xil_printf("\r\n\r\nPlease enter value of liquid lens register, in hex: 0x");
		//A, B, C,..., F need to be entered with capital letters
		while (read_char1 < 48) {
			read_char1 = getchar();
		}
		while (read_char2 < 48) {
			read_char2 = getchar();
		}
		// If character is a digit, convert from ASCII code to a digit between 0 and 9
		if (read_char1 <= 57) {
			read_char1 -= 48;
		}
		// If character is a letter, convert ASCII code to a number between 10 and 15
		else {
			read_char1 -= 55;
		}
		// If character is a digit, convert from ASCII code to a digit between 0 and 9
		if (read_char2 <= 57) {
			read_char2 -= 48;
		}
		// If character is a letter, convert ASCII code to a number between 10 and 15
		else {
			read_char2 -= 55;
		}
		cam.writeRegLiquid((uint8_t) (16*read_char1 + read_char2));
		xil_printf("\r\nWrote to liquid lens controller: %x", (uint8_t) (16*read_char1 + read_char2));
	}


	cleanup_platform();

	return 0;
}
