################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./Dev/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F/port.o 

C_DEPS += \
./Dev/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F/port.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F/%.o Dev/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F/%.su Dev/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F/%.cyclo: ../Dev/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F/%.c Dev/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRTOS_STM32F407_Example2/Dev/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRTOS_STM32F407_Example2/Dev/MiddleWare/FreeRTOS/portable/MemMang" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRTOS_STM32F407_Example2/Dev/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRTOS_STM32F407_Example2/Dev/Application/Config" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRTOS_STM32F407_Example2/Dev/Application/Application" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-MiddleWare-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

clean-Dev-2f-MiddleWare-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F:
	-$(RM) ./Dev/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F/port.cyclo ./Dev/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F/port.d ./Dev/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F/port.o ./Dev/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F/port.su

.PHONY: clean-Dev-2f-MiddleWare-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

