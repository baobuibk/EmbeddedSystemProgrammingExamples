################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/App/Applications/app_main.c 

OBJS += \
./Dev/App/Applications/app_main.o 

C_DEPS += \
./Dev/App/Applications/app_main.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/App/Applications/%.o Dev/App/Applications/%.su Dev/App/Applications/%.cyclo: ../Dev/App/Applications/%.c Dev/App/Applications/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/MiddleWares/FreeRTOS/include" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/MiddleWares/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/MiddleWares/FreeRTOS/portable/MemMang" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/MiddleWares/FreeRTOS" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/App/Config" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/App/Applications" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-App-2f-Applications

clean-Dev-2f-App-2f-Applications:
	-$(RM) ./Dev/App/Applications/app_main.cyclo ./Dev/App/Applications/app_main.d ./Dev/App/Applications/app_main.o ./Dev/App/Applications/app_main.su

.PHONY: clean-Dev-2f-App-2f-Applications

