/*
 * HAL_delay.c
 *
 *  Created on: Sep 23, 2025
 *      Author: HTSANG
 */

#include "HAL_delay.h"

/* hal_delay.c */
#include "stm32h7xx_hal.h"
#include "FreeRTOS.h"
#include "task.h"

//__weak void HAL_Delay_Default(uint32_t Delay)
//{
//    uint32_t tickstart = HAL_GetTick();
//    uint32_t wait = Delay;
//    if (wait < HAL_MAX_DELAY) { wait += (uint32_t)uwTickFreq; }
//    while ((HAL_GetTick() - tickstart) < wait) { }
//}
//
//void HAL_Delay(uint32_t Delay)
//{
//    if (xTaskGetSchedulerState() == taskSCHEDULER_NOT_STARTED)
//    {
//        HAL_Delay_Default(Delay);
//    }
//    else
//    {
//        TickType_t ticks = pdMS_TO_TICKS(Delay);
//        if (ticks == 0 && Delay > 0) ticks = 1;
//        vTaskDelay(ticks);
//    }
//}
