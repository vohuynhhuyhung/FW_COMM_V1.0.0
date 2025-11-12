################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/ThirdParty/FatFS/documents/res/app1.c \
../Dev/ThirdParty/FatFS/documents/res/app2.c \
../Dev/ThirdParty/FatFS/documents/res/app3.c \
../Dev/ThirdParty/FatFS/documents/res/app4.c \
../Dev/ThirdParty/FatFS/documents/res/app5.c \
../Dev/ThirdParty/FatFS/documents/res/app6.c 

OBJS += \
./Dev/ThirdParty/FatFS/documents/res/app1.o \
./Dev/ThirdParty/FatFS/documents/res/app2.o \
./Dev/ThirdParty/FatFS/documents/res/app3.o \
./Dev/ThirdParty/FatFS/documents/res/app4.o \
./Dev/ThirdParty/FatFS/documents/res/app5.o \
./Dev/ThirdParty/FatFS/documents/res/app6.o 

C_DEPS += \
./Dev/ThirdParty/FatFS/documents/res/app1.d \
./Dev/ThirdParty/FatFS/documents/res/app2.d \
./Dev/ThirdParty/FatFS/documents/res/app3.d \
./Dev/ThirdParty/FatFS/documents/res/app4.d \
./Dev/ThirdParty/FatFS/documents/res/app5.d \
./Dev/ThirdParty/FatFS/documents/res/app6.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/ThirdParty/FatFS/documents/res/%.o Dev/ThirdParty/FatFS/documents/res/%.su Dev/ThirdParty/FatFS/documents/res/%.cyclo: ../Dev/ThirdParty/FatFS/documents/res/%.c Dev/ThirdParty/FatFS/documents/res/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32H745xx -DCORE_CM7 -DSTM32H745xx -DUSE_FULL_LL_DRIVER -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS_Config" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Setup" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Src" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/CLI_Terminal/CLI_Command" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/Define" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Util/RingBuffer" -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/UART" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/USB_CDC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/arch/posix" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/crypto" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/drivers" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp/interfaces" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include/csp" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/libcsp/include" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/Devices/IS66WVS4M8BLL" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/ADC" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/BSP/SPI" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/FatFS/source" -I"D:/1_WorkSpace/FW/SpaceLiin_IF_BOARD_FW/COMM_HW100/COMM_HW100/CM7/Dev/ThirdParty/FatFS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-ThirdParty-2f-FatFS-2f-documents-2f-res

clean-Dev-2f-ThirdParty-2f-FatFS-2f-documents-2f-res:
	-$(RM) ./Dev/ThirdParty/FatFS/documents/res/app1.cyclo ./Dev/ThirdParty/FatFS/documents/res/app1.d ./Dev/ThirdParty/FatFS/documents/res/app1.o ./Dev/ThirdParty/FatFS/documents/res/app1.su ./Dev/ThirdParty/FatFS/documents/res/app2.cyclo ./Dev/ThirdParty/FatFS/documents/res/app2.d ./Dev/ThirdParty/FatFS/documents/res/app2.o ./Dev/ThirdParty/FatFS/documents/res/app2.su ./Dev/ThirdParty/FatFS/documents/res/app3.cyclo ./Dev/ThirdParty/FatFS/documents/res/app3.d ./Dev/ThirdParty/FatFS/documents/res/app3.o ./Dev/ThirdParty/FatFS/documents/res/app3.su ./Dev/ThirdParty/FatFS/documents/res/app4.cyclo ./Dev/ThirdParty/FatFS/documents/res/app4.d ./Dev/ThirdParty/FatFS/documents/res/app4.o ./Dev/ThirdParty/FatFS/documents/res/app4.su ./Dev/ThirdParty/FatFS/documents/res/app5.cyclo ./Dev/ThirdParty/FatFS/documents/res/app5.d ./Dev/ThirdParty/FatFS/documents/res/app5.o ./Dev/ThirdParty/FatFS/documents/res/app5.su ./Dev/ThirdParty/FatFS/documents/res/app6.cyclo ./Dev/ThirdParty/FatFS/documents/res/app6.d ./Dev/ThirdParty/FatFS/documents/res/app6.o ./Dev/ThirdParty/FatFS/documents/res/app6.su

.PHONY: clean-Dev-2f-ThirdParty-2f-FatFS-2f-documents-2f-res

