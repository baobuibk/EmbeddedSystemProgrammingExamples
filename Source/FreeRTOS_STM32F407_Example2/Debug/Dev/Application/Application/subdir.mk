################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/Application/Application/app_main.c 

OBJS += \
./Dev/Application/Application/app_main.o 

C_DEPS += \
./Dev/Application/Application/app_main.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/Application/Application/%.o Dev/Application/Application/%.su Dev/Application/Application/%.cyclo: ../Dev/Application/Application/%.c Dev/Application/Application/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRTOS_STM32F407_Example2/Dev/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRTOS_STM32F407_Example2/Dev/MiddleWare/FreeRTOS/portable/MemMang" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRTOS_STM32F407_Example2/Dev/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRTOS_STM32F407_Example2/Dev/Application/Config" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRTOS_STM32F407_Example2/Dev/Application/Application" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-Application-2f-Application

clean-Dev-2f-Application-2f-Application:
	-$(RM) ./Dev/Application/Application/app_main.cyclo ./Dev/Application/Application/app_main.d ./Dev/Application/Application/app_main.o ./Dev/Application/Application/app_main.su

.PHONY: clean-Dev-2f-Application-2f-Application

