/*
 * I2C_ClientAXI_IIC.h
 *
 *  Created on: May 26, 2016
 *      Author: Elod
 */

#ifndef I2C_CLIENTAXI_IIC_H_
#define I2C_CLIENTAXI_IIC_H_

#include "I2C_Client.h"

#include <stdio.h>
#include <stdint.h>
#include <string>
#include <stdexcept>
#include <functional>

#include "xiicps.h"

#define STRINGIZE(x) STRINGIZE2(x)
#define STRINGIZE2(x) #x
#define LINE_STRING STRINGIZE(__LINE__)

namespace digilent {

// Shim function to extract function object from CallbackRef and call it
// This should call our member function handlers below
template <typename Func>
void MyCallback(void* CallbackRef, int i)
{
  auto pfn = static_cast<std::function<Func>*>(CallbackRef);
  pfn->operator()(i);
}

using namespace std::placeholders;

template <typename IrptCtl>
class PS_IIC: public I2C_Client {
public:

	PS_IIC(uint16_t dev_id, IrptCtl& irpt_ctl, uint32_t irpt_id, uint32_t sclk_rate_Hz) :
		drv_inst_(),
		irpt_ctl_(irpt_ctl),
		stat_handler_(std::bind(&PS_IIC::StatusHandler, this, _1))
	{
		XIicPs_Config* ConfigPtr;
		XStatus Status;

		// Initialize the IIC driver so that it is ready to use.
		ConfigPtr = XIicPs_LookupConfig(dev_id);
		if (ConfigPtr == NULL) {
			throw std::runtime_error(__FILE__ ":" LINE_STRING);
		}

		Status = XIicPs_CfgInitialize(&drv_inst_, ConfigPtr,
			ConfigPtr->BaseAddress);
		if (Status != XST_SUCCESS) {
			throw std::runtime_error(__FILE__ ":" LINE_STRING);
		}

		Status = XIicPs_SelfTest(&drv_inst_);
		if (Status != XST_SUCCESS)
		{
			throw std::runtime_error(__FILE__ ":" LINE_STRING);
		}

	   Status = XIicPs_SetSClk(&drv_inst_, sclk_rate_Hz);
		if (Status != XST_SUCCESS)
		{
			throw std::runtime_error(__FILE__ ":" LINE_STRING);
		}

		//Register the IIC handler with the interrupt controller
		irpt_ctl_.registerHandler(irpt_id, reinterpret_cast<typename IrptCtl::Handler>(&XIicPs_MasterInterruptHandler), &drv_inst_);
		irpt_ctl_.enableInterrupt(irpt_id);
		irpt_ctl_.enableInterrupts();

		XIicPs_SetStatusHandler	(&drv_inst_, &stat_handler_, &MyCallback<void(int)>);
	}

	virtual void read(uint8_t addr, uint8_t* buf, size_t count) override
	{
		// Receive the Data.

		resetFlags();

		XIicPs_MasterRecv(&drv_inst_, buf, count, addr);

		// Wait till all the data is received.
		while (!rx_complete_flag_ && !slave_nack_flag_ && !arb_lost_flag_ && !other_error_flag_) ;

		if (slave_nack_flag_) throw TransmitError("Slave NACK");
		if (arb_lost_flag_) throw TransmitError("Arbitration lost");
		if (other_error_flag_) throw TransmitError("Other I2C error");
	}

	virtual void write(uint8_t addr,  uint8_t const* buf, size_t count) override
	{
		//xintc.h is not const-correct, so we create local copy
		std::vector<uint8_t> buf_local(count);
		buf_local.assign(buf, buf+count);

		resetFlags();

		XIicPs_MasterSend(&drv_inst_, buf_local.data(), buf_local.size(), addr);

		while (!tx_complete_flag_ && !slave_nack_flag_ && !arb_lost_flag_ && !other_error_flag_) ;

		if (slave_nack_flag_) throw TransmitError("Slave NACK");
		if (arb_lost_flag_) throw TransmitError("Arbitration lost");
		if (other_error_flag_) throw TransmitError("Other I2C error");
	}

	virtual ~PS_IIC() { }

private:
	void StatusHandler(int Event)
	{
		if (Event & XIICPS_EVENT_COMPLETE_SEND) //Transmit Complete Event
		{
			tx_complete_flag_ = 1;
		}
		if (Event & XIICPS_EVENT_COMPLETE_RECV)  //Receive Complete Event
		{
			rx_complete_flag_ = 1;
		}
		if (Event & XIICPS_EVENT_NACK)	// Slave did not ACK (had error)
		{
			slave_nack_flag_ = 1;
		}
		if (Event & XIICPS_EVENT_ARB_LOST) 		// Arbitration was lost
		{
			arb_lost_flag_ = 1;
		}
		if (Event & (XIICPS_EVENT_TIME_OUT |	//Transfer timed out
				XIICPS_EVENT_ERROR |		// Receive error
				XIICPS_EVENT_SLAVE_RDY))	// Bus transitioned to not busy
		{
			other_error_flag_ = 1;
		}
	}
	void resetFlags()
	{
		tx_complete_flag_ = 0;	// Flag to check completion of Transmission
		rx_complete_flag_ = 0;	// Flag to check completion of Reception
		slave_nack_flag_ = 0;	// Flag to check for NACK error
		arb_lost_flag_ = 0; 		// Flag to check for arbitration lost error
		other_error_flag_ = 0;
	}
private:
	XIicPs drv_inst_;
	IrptCtl& irpt_ctl_;
	std::function<void(int)> stat_handler_;
	volatile uint8_t tx_complete_flag_;	// Flag to check completion of Transmission
	volatile uint8_t rx_complete_flag_;	// Flag to check completion of Reception
	volatile uint8_t slave_nack_flag_;	// Flag to check completion of Reception
	volatile uint8_t arb_lost_flag_;	// Flag to check completion of Reception
	volatile uint8_t other_error_flag_;	// Flag to check completion of Transmission
};

} /* namespace digilent */

#endif /* I2C_CLIENTAXI_IIC_H_ */
