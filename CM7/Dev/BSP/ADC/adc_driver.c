/*
 * adc_driver.c
 *
 *  Created on: Oct 24, 2025
 *      Author: Huy Hung
 */
#include "stm32h7xx_ll_adc.h"
#include "adc_driver.h"

volatile adc_triplet_t g_adc_latest = {0};

uint16_t live_buf[3];
uint16_t live_buf_2;

uint16_t ADC2_Read()
{

    LL_ADC_ClearFlag_EOC(ADC2);
    LL_ADC_REG_StartConversion(ADC2);

    while (!LL_ADC_IsActiveFlag_EOC(ADC2));
    LL_ADC_ClearFlag_EOC(ADC2);

    live_buf_2 = LL_ADC_REG_ReadConversionData16(ADC2);

    return live_buf_2;
}

uint16_t ADC1_ReadIndex(uint8_t index)
{

    LL_ADC_ClearFlag_EOC(ADC1);
//    LL_ADC_ClearFlag_EOS(ADC1);
    LL_ADC_REG_StartConversion(ADC1);

    for (int i = 0; i < 3; i++) {
        while (!LL_ADC_IsActiveFlag_EOC(ADC1));
        LL_ADC_ClearFlag_EOC(ADC1);
        live_buf[i] = LL_ADC_REG_ReadConversionData16(ADC1);
    }
//    while (!LL_ADC_IsActiveFlag_EOS(ADC1));
//    LL_ADC_ClearFlag_EOS(ADC1);

    switch (index) {
        case 1: return live_buf[0]; // INP0
        case 2: return live_buf[1]; // INP1
        case 3: return live_buf[2]; // INP3
        default: return 0xFFFF; // invalid
    }
}
