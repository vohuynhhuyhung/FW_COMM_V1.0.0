#ifndef BSP_SPI_SPI_DRIVER_H_
#define BSP_SPI_SPI_DRIVER_H_

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#include "stm32h7xx_ll_spi.h"
#include "stm32h7xx_ll_gpio.h"
#include "stm32h7xx_ll_bus.h"

void SPI_Transmit(SPI_TypeDef *SPIx, const uint8_t data);

#endif /* BSP_SPI_SPI_DRIVER_H_ */
