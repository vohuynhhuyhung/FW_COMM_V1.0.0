################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32H7xx_HAL_Driver/subdir.mk
-include Dev/Util/RingBuffer/subdir.mk
-include Dev/ThirdParty/libcsp/src/transport/subdir.mk
-include Dev/ThirdParty/libcsp/src/rtable/subdir.mk
-include Dev/ThirdParty/libcsp/src/interfaces/subdir.mk
-include Dev/ThirdParty/libcsp/src/drivers/can/subdir.mk
-include Dev/ThirdParty/libcsp/src/crypto/subdir.mk
-include Dev/ThirdParty/libcsp/src/arch/freertos/subdir.mk
-include Dev/ThirdParty/libcsp/src/arch/subdir.mk
-include Dev/ThirdParty/libcsp/src/subdir.mk
-include Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/MemMang/subdir.mk
-include Dev/OS/FreeRTOS/FreeRTOS-Kernel/portable/GCC/ARM_CM7/r0p1/subdir.mk
-include Dev/OS/FreeRTOS/FreeRTOS-Kernel/subdir.mk
-include Dev/Devices/IS66WVS4M8BLL/subdir.mk
-include Dev/CLI_Terminal/CLI_Src/subdir.mk
-include Dev/CLI_Terminal/CLI_Setup/subdir.mk
-include Dev/CLI_Terminal/CLI_Command/subdir.mk
-include Dev/BSP/USB_CDC/subdir.mk
-include Dev/BSP/UART/subdir.mk
-include Dev/BSP/ADC/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include Common/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := COMM_HW100_CM7
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
COMM_HW100_CM7.elf \

MAP_FILES += \
COMM_HW100_CM7.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
COMM_HW100_CM7.list \


# All Target
all: main-build

# Main-build Target
main-build: COMM_HW100_CM7.elf secondary-outputs

# Tool invocations
COMM_HW100_CM7.elf COMM_HW100_CM7.map: $(OBJS) $(USER_OBJS) D:\1_WorkSpace\FW\SpaceLiin_IF_BOARD_FW\COMM_HW100\COMM_HW100\CM7\STM32H745XIHX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "COMM_HW100_CM7.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"D:\1_WorkSpace\FW\SpaceLiin_IF_BOARD_FW\COMM_HW100\COMM_HW100\CM7\STM32H745XIHX_FLASH.ld" --specs=nosys.specs -Wl,-Map="COMM_HW100_CM7.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

COMM_HW100_CM7.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "COMM_HW100_CM7.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) COMM_HW100_CM7.elf COMM_HW100_CM7.list COMM_HW100_CM7.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
