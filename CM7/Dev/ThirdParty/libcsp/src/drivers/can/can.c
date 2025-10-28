/*
 * can.c
 *
 *  Created on: Sep 27, 2025
 *      Author: HTSANG
 */

#include "can.h"
#include "csp_if_can.h"
#include "csp_types.h"
#include "stm32h7xx_hal.h"
#include "stm32h7xx_hal_fdcan.h"

extern FDCAN_HandleTypeDef hfdcan2;

csp_can_interface_data_t can_ifdata;
csp_iface_t can_iface;

static int csp_can_tx_frame(void *driver_data, uint32_t id, const uint8_t *data, uint8_t dlc) {

    FDCAN_TxHeaderTypeDef txHeader;
    txHeader.Identifier          = (uint32_t)id;
    txHeader.IdType              = FDCAN_EXTENDED_ID;
    txHeader.TxFrameType         = FDCAN_DATA_FRAME;
    txHeader.DataLength          = dlc;
    txHeader.ErrorStateIndicator = FDCAN_ESI_ACTIVE;
    txHeader.BitRateSwitch       = FDCAN_BRS_OFF;
    txHeader.FDFormat            = FDCAN_CLASSIC_CAN;
    txHeader.TxEventFifoControl  = FDCAN_NO_TX_EVENTS;
    txHeader.MessageMarker       = 0;

    if (HAL_FDCAN_AddMessageToTxFifoQ(&hfdcan2, &txHeader, data) != HAL_OK) {
        return CSP_ERR_DRIVER;
    }

	return CSP_ERR_NONE;
}

void can_csp_init(void) {
	FDCAN_FilterTypeDef sFilterConfig = {
		.IdType = FDCAN_EXTENDED_ID,
		.FilterIndex = 0,
		.FilterType = FDCAN_FILTER_RANGE_NO_EIDM,
		.FilterConfig = FDCAN_FILTER_TO_RXFIFO0,
		.FilterID1 = 0x00000000,
		.FilterID2 = 0x1FFFFFFF
	};
	HAL_FDCAN_ConfigFilter(&hfdcan2, &sFilterConfig);

	HAL_FDCAN_Start(&hfdcan2);

	HAL_FDCAN_ActivateNotification(&hfdcan2, FDCAN_IT_RX_FIFO0_NEW_MESSAGE, 0);

	can_ifdata.tx_func			= csp_can_tx_frame;
	can_iface.name				= "can";
	can_iface.driver_data		= &hfdcan2;
	can_iface.interface_data	= &can_ifdata;
	csp_can_add_interface(&can_iface);
}

void HAL_FDCAN_RxFifo0Callback(FDCAN_HandleTypeDef *hfdcan, uint32_t RxFifo0ITs)
{
    FDCAN_RxHeaderTypeDef rxHeader;
    uint8_t rxData[8];
    CSP_BASE_TYPE xCspTaskWoken = pdFALSE;

    if (HAL_FDCAN_GetRxMessage(hfdcan, FDCAN_RX_FIFO0, &rxHeader, rxData) == HAL_OK) {
    	csp_can_rx(&can_iface, rxHeader.Identifier, rxData, rxHeader.DataLength, &xCspTaskWoken);

    	if(xCspTaskWoken) {
    		portYIELD_FROM_ISR(xCspTaskWoken);
    	}
	}
}
