/*
 * iicclient.h
 *
 *  Created on: May 26, 2016
 *      Author: Elod
 */

#ifndef IICCLIENT_H_
#define IICCLIENT_H_

#include <stdint.h>
#include <stdexcept>
#include <vector>


namespace digilent {

class I2C_Client {
public:
	class TransmitError : public std::runtime_error {
	public:
		TransmitError(char const* msg) : std::runtime_error(msg) {}
	};
	virtual void read(uint8_t addr, uint8_t* buf, size_t count) = 0;
	virtual void write(uint8_t addr, uint8_t const* buf, size_t count) = 0;
	virtual ~I2C_Client() = default;
};

} /* namespace digilent */

#endif /* IICCLIENT_H_ */
