################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/MiddleWares/FreeRTOS/portable/MemMang/heap_4.c 

OBJS += \
./Dev/MiddleWares/FreeRTOS/portable/MemMang/heap_4.o 

C_DEPS += \
./Dev/MiddleWares/FreeRTOS/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/MiddleWares/FreeRTOS/portable/MemMang/%.o Dev/MiddleWares/FreeRTOS/portable/MemMang/%.su Dev/MiddleWares/FreeRTOS/portable/MemMang/%.cyclo: ../Dev/MiddleWares/FreeRTOS/portable/MemMang/%.c Dev/MiddleWares/FreeRTOS/portable/MemMang/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/MiddleWares/FreeRTOS/include" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/MiddleWares/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/MiddleWares/FreeRTOS/portable/MemMang" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/MiddleWares/FreeRTOS" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/App/Config" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/App/Applications" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-MiddleWares-2f-FreeRTOS-2f-portable-2f-MemMang

clean-Dev-2f-MiddleWares-2f-FreeRTOS-2f-portable-2f-MemMang:
	-$(RM) ./Dev/MiddleWares/FreeRTOS/portable/MemMang/heap_4.cyclo ./Dev/MiddleWares/FreeRTOS/portable/MemMang/heap_4.d ./Dev/MiddleWares/FreeRTOS/portable/MemMang/heap_4.o ./Dev/MiddleWares/FreeRTOS/portable/MemMang/heap_4.su

.PHONY: clean-Dev-2f-MiddleWares-2f-FreeRTOS-2f-portable-2f-MemMang

