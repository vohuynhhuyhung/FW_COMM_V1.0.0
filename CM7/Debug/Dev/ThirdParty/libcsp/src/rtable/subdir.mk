################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/ThirdParty/libcsp/src/rtable/csp_rtable.c \
../Dev/ThirdParty/libcsp/src/rtable/csp_rtable_cidr.c 

OBJS += \
./Dev/ThirdParty/libcsp/src/rtable/csp_rtable.o \
./Dev/ThirdParty/libcsp/src/rtable/csp_rtable_cidr.o 

C_DEPS += \
./Dev/ThirdParty/libcsp/src/rtable/csp_rtable.d \
./Dev/ThirdParty/libcsp/src/rtable/csp_rtable_cidr.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/ThirdParty/libcsp/src/rtable/%.o Dev/ThirdParty/libcsp/src/rtable/%.su Dev/ThirdParty/libcsp/src/rtable/%.cyclo: ../Dev/ThirdParty/libcsp/src/rtable/%.c Dev/ThirdParty/libcsp/src/rtable/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32H745xx -DCORE_CM7 -DSTM32H745xx -DUSE_FULL_LL_DRIVER -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS_Config" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Setup" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Src" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Command" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/Define" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/RingBuffer" -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/UART" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/USB_CDC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/arch/posix" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/crypto" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/drivers" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/interfaces" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Devices/IS66WVS4M8BLL" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/ADC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-ThirdParty-2f-libcsp-2f-src-2f-rtable

clean-Dev-2f-ThirdParty-2f-libcsp-2f-src-2f-rtable:
	-$(RM) ./Dev/ThirdParty/libcsp/src/rtable/csp_rtable.cyclo ./Dev/ThirdParty/libcsp/src/rtable/csp_rtable.d ./Dev/ThirdParty/libcsp/src/rtable/csp_rtable.o ./Dev/ThirdParty/libcsp/src/rtable/csp_rtable.su ./Dev/ThirdParty/libcsp/src/rtable/csp_rtable_cidr.cyclo ./Dev/ThirdParty/libcsp/src/rtable/csp_rtable_cidr.d ./Dev/ThirdParty/libcsp/src/rtable/csp_rtable_cidr.o ./Dev/ThirdParty/libcsp/src/rtable/csp_rtable_cidr.su

.PHONY: clean-Dev-2f-ThirdParty-2f-libcsp-2f-src-2f-rtable

