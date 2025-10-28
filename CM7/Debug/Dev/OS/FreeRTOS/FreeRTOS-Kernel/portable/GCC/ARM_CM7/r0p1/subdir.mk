################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1/port.c 

OBJS += \
./Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1/port.o 

C_DEPS += \
./Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1/port.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1/%.o Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1/%.su Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1/%.cyclo: ../Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1/%.c Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32H745xx -DCORE_CM7 -DSTM32H745xx -DUSE_FULL_LL_DRIVER -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS_Config" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Setup" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Src" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Command" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/Define" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/RingBuffer" -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/UART" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/USB_CDC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/arch/posix" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/crypto" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/drivers" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/interfaces" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Devices/IS66WVS4M8BLL" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/ADC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-OS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-ARM_CM7-2f-r0p1

clean-Dev-2f-OS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-ARM_CM7-2f-r0p1:
	-$(RM) ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1/port.cyclo ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1/port.d ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1/port.o ./Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1/port.su

.PHONY: clean-Dev-2f-OS-2f-FreeRTOS-2f-FreeRTOS-2d-Kernel-2f-portable-2f-GCC-2f-ARM_CM7-2f-r0p1

