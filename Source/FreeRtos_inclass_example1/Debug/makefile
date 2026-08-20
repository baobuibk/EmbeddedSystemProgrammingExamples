################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Dev/MiddleWares/FreeRTOS/portable/MemMang/subdir.mk
-include Dev/MiddleWares/FreeRTOS/portable/GCC/ARM_CM4F/subdir.mk
-include Dev/MiddleWares/FreeRTOS/subdir.mk
-include Dev/App/Applications/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
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


BUILD_ARTIFACT_NAME := FreeRtos_inclass_example1
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
FreeRtos_inclass_example1.elf \

MAP_FILES += \
FreeRtos_inclass_example1.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
FreeRtos_inclass_example1.list \


# All Target
all: main-build

# Main-build Target
main-build: FreeRtos_inclass_example1.elf secondary-outputs

# Tool invocations
FreeRtos_inclass_example1.elf FreeRtos_inclass_example1.map: $(OBJS) $(USER_OBJS) D:\PROJECT\BOOK_EXAMPLE\Book_Example_Repos\Source\FreeRtos_inclass_example1\STM32F407VGTX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "FreeRtos_inclass_example1.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"D:\PROJECT\BOOK_EXAMPLE\Book_Example_Repos\Source\FreeRtos_inclass_example1\STM32F407VGTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="FreeRtos_inclass_example1.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

FreeRtos_inclass_example1.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "FreeRtos_inclass_example1.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) FreeRtos_inclass_example1.elf FreeRtos_inclass_example1.list FreeRtos_inclass_example1.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
