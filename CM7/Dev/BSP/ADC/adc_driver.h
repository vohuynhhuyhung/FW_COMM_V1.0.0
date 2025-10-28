/*
 * adc_driver.h
 *
 *  Created on: Oct 24, 2025
 *      Author: Huy Hung
 */

#ifndef BSP_ADC_ADC_DRIVER_H_
#define BSP_ADC_ADC_DRIVER_H_

#include <stdint.h>

typedef struct {
    uint16_t ch_inp0;
    uint16_t ch_inp1;
    uint16_t ch_inp3;
} adc_triplet_t;

typedef struct {
    uint8_t  idx;
    uint16_t raw;
    uint32_t  temp;
} temp_reply_t;


extern volatile adc_triplet_t g_adc_latest;

void ADC1_Read(adc_triplet_t *out);
uint16_t ADC1_ReadIndex(uint8_t index);
#endif /* BSP_ADC_ADC_DRIVER_H_ */
