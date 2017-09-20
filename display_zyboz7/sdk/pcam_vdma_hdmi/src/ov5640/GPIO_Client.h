/*
 * GPIOClient.h
 *
 *  Created on: Jun 7, 2016
 *      Author: Elod
 */

#ifndef GPIOCLIENT_H_
#define GPIOCLIENT_H_

namespace digilent {

class GPIO_Client {
public:
	using Bits = enum {CAM_GPIO0};
	virtual void setBit(Bits) = 0;
	virtual void clearBit(Bits bits) = 0;
	virtual void commit() = 0;
	virtual ~GPIO_Client() = default;
};

} /* namespace digilent */

#endif /* GPIOCLIENT_H_ */
