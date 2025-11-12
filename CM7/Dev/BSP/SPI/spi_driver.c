#include "spi_driver.h"
#include "stm32h7xx_ll_spi.h"
#include "stm32h7xx_ll_gpio.h"
#include "stm32h7xx_ll_bus.h"


void SPI_Transmit(SPI_TypeDef *SPIx, const uint8_t data){
	while (!LL_SPI_IsActiveFlag_TXP(SPIx));
	LL_SPI_TransmitData8(SPIx, data);
	LL_SPI_StartMasterTransfer(SPIx);
}

int spi_ll_tx_hdtx(SPI_TypeDef *SPIx, const uint8_t *tx, size_t len)
{

    LL_SPI_SetTransferSize(SPIx, (uint32_t)len);

    LL_SPI_StartMasterTransfer(SPIx);

    for (size_t i = 0; i < len; i++) {
        LL_SPI_TransmitData8(SPIx, tx[i]);
    }

#ifdef SPI_SR_EOT
    if (LL_SPI_IsActiveFlag_EOT(SPIx)) {
        LL_SPI_ClearFlag_EOT(SPIx);
    }
#endif
#ifdef SPI_SR_TXTF
    if (LL_SPI_IsActiveFlag_TXTF(SPIx)) {
        LL_SPI_ClearFlag_TXTF(SPIx);
    }
#endif

    return 0;
}
/*
 * spi_driver.c
 *
 *  Created on: Nov 4, 2025
 *      Author: Huy Hung
 */


