#include "spi_driver.h"
#include "stm32h7xx_ll_spi.h"
#include "stm32h7xx_ll_gpio.h"
#include "stm32h7xx_ll_bus.h"


void SPI_Transmit(SPI_TypeDef *SPIx, const uint8_t data){
	while (!LL_SPI_IsActiveFlag_TXP(SPIx));
	LL_SPI_SetTransferSize(SPIx, 1);
	LL_SPI_TransmitData8(SPIx, data);
	LL_SPI_StartMasterTransfer(SPIx);
}
