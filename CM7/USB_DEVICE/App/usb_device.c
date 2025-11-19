/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : usb_device.c
  * @version        : v1.0_Cube
  * @brief          : This file implements the USB Device
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/

#include "usb_device.h"
#include "usbd_core.h"
#include "usbd_desc.h"
#include "usbd_cdc.h"
#include "usbd_cdc_if.h"

/* USER CODE BEGIN Includes */
#include "FreeRTOS.h"
#include "usbd_rndis.h"
#include "queuex.h"

/* USER CODE END Includes */

/* USER CODE BEGIN PV */
/* Private variables ---------------------------------------------------------*/
static RNDIS_USB_STATISTIC_t rndis_statistic;
extern queue_handle_t      tcpQueue;
extern queue_handle_t      usbQueue;
/* USER CODE END PV */

/* USER CODE BEGIN PFP */
/* Private function prototypes -----------------------------------------------*/

/* USER CODE END PFP */

/* USB Device Core handle declaration. */
USBD_HandleTypeDef hUsbDeviceHS;

/*
 * -- Insert your variables declaration here --
 */
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/*
 * -- Insert your external function declaration here --
 */
/* USER CODE BEGIN 1 */

void usb_init( void )
{
   // force enum
//   usb_forceHostEnum();

   // Init Device Library, add supported class and start the library.
   if( USBD_Init(&hUsbDeviceHS, &HS_Desc, DEVICE_HS) != USBD_OK )
   {
      Error_Handler();
   }
   if( USBD_RegisterClass(&hUsbDeviceHS, USBD_RNDIS_getClass() ) != USBD_OK )
   {
      Error_Handler();
   }
   if( USBD_Start(&hUsbDeviceHS) != USBD_OK )
   {
      Error_Handler();
   }
}

// ----------------------------------------------------------------------------
/// \brief     Called if a complete frame has been received.
///
/// \param     [in]  const char *data
/// \param     [in]  int size
///
/// \return    none
void on_usbOutRxPacket(const char *data, int size)
{
   rndis_statistic.counterRxFrame++;
   rndis_statistic.counterRxData+=(uint32_t)size;
   queue_enqueue( (uint8_t*)data, size, &usbQueue );
   USBD_RNDIS_setBuffer( queue_getHeadBuffer( &usbQueue ) );
}

// ----------------------------------------------------------------------------
/// \brief     Called if a frame has been send.
///
/// \param     none
///
/// \return    none
void on_usbInTxCplt( void )
{
   queue_dequeue(&tcpQueue);
}

// ----------------------------------------------------------------------------
/// \brief     Start a new usb transmission.
///
/// \param     [in]  uint8_t* dpointer
/// \param     [in]  uint16_t length
///
/// \return    none
uint8_t usb_output( uint8_t* dpointer, uint16_t length )
{
   if(!USBD_RNDIS_send(dpointer, length))
   {
      return 0;
   }
   rndis_statistic.counterTxFrame++;
   rndis_statistic.counterTxData+=(uint32_t)length;
   return 1;
}
/* USER CODE END 1 */

/**
  * Init USB device Library, add supported class and start the library
  * @retval None
  */
void MX_USB_DEVICE_Init(void)
{
  /* USER CODE BEGIN USB_DEVICE_Init_PreTreatment */

  /* USER CODE END USB_DEVICE_Init_PreTreatment */

  /* Init Device Library, add supported class and start the library. */
  if (USBD_Init(&hUsbDeviceHS, &HS_Desc, DEVICE_HS) != USBD_OK)
  {
    Error_Handler();
  }
  if (USBD_RegisterClass(&hUsbDeviceHS, &USBD_CDC) != USBD_OK)
  {
    Error_Handler();
  }
  if (USBD_CDC_RegisterInterface(&hUsbDeviceHS, &USBD_Interface_fops_HS) != USBD_OK)
  {
    Error_Handler();
  }
  if (USBD_Start(&hUsbDeviceHS) != USBD_OK)
  {
    Error_Handler();
  }

  /* USER CODE BEGIN USB_DEVICE_Init_PostTreatment */
  HAL_PWREx_EnableUSBVoltageDetector();

  /* USER CODE END USB_DEVICE_Init_PostTreatment */
}

/**
  * @}
  */

/**
  * @}
  */

