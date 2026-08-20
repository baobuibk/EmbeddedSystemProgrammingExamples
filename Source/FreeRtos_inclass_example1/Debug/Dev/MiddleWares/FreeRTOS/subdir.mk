################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/MiddleWares/FreeRTOS/croutine.c \
../Dev/MiddleWares/FreeRTOS/event_groups.c \
../Dev/MiddleWares/FreeRTOS/list.c \
../Dev/MiddleWares/FreeRTOS/queue.c \
../Dev/MiddleWares/FreeRTOS/stream_buffer.c \
../Dev/MiddleWares/FreeRTOS/tasks.c \
../Dev/MiddleWares/FreeRTOS/timers.c 

OBJS += \
./Dev/MiddleWares/FreeRTOS/croutine.o \
./Dev/MiddleWares/FreeRTOS/event_groups.o \
./Dev/MiddleWares/FreeRTOS/list.o \
./Dev/MiddleWares/FreeRTOS/queue.o \
./Dev/MiddleWares/FreeRTOS/stream_buffer.o \
./Dev/MiddleWares/FreeRTOS/tasks.o \
./Dev/MiddleWares/FreeRTOS/timers.o 

C_DEPS += \
./Dev/MiddleWares/FreeRTOS/croutine.d \
./Dev/MiddleWares/FreeRTOS/event_groups.d \
./Dev/MiddleWares/FreeRTOS/list.d \
./Dev/MiddleWares/FreeRTOS/queue.d \
./Dev/MiddleWares/FreeRTOS/stream_buffer.d \
./Dev/MiddleWares/FreeRTOS/tasks.d \
./Dev/MiddleWares/FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/MiddleWares/FreeRTOS/%.o Dev/MiddleWares/FreeRTOS/%.su Dev/MiddleWares/FreeRTOS/%.cyclo: ../Dev/MiddleWares/FreeRTOS/%.c Dev/MiddleWares/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/MiddleWares/FreeRTOS/include" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/MiddleWares/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/MiddleWares/FreeRTOS/portable/MemMang" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/MiddleWares/FreeRTOS" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/App/Config" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRtos_inclass_example1/Dev/App/Applications" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-MiddleWares-2f-FreeRTOS

clean-Dev-2f-MiddleWares-2f-FreeRTOS:
	-$(RM) ./Dev/MiddleWares/FreeRTOS/croutine.cyclo ./Dev/MiddleWares/FreeRTOS/croutine.d ./Dev/MiddleWares/FreeRTOS/croutine.o ./Dev/MiddleWares/FreeRTOS/croutine.su ./Dev/MiddleWares/FreeRTOS/event_groups.cyclo ./Dev/MiddleWares/FreeRTOS/event_groups.d ./Dev/MiddleWares/FreeRTOS/event_groups.o ./Dev/MiddleWares/FreeRTOS/event_groups.su ./Dev/MiddleWares/FreeRTOS/list.cyclo ./Dev/MiddleWares/FreeRTOS/list.d ./Dev/MiddleWares/FreeRTOS/list.o ./Dev/MiddleWares/FreeRTOS/list.su ./Dev/MiddleWares/FreeRTOS/queue.cyclo ./Dev/MiddleWares/FreeRTOS/queue.d ./Dev/MiddleWares/FreeRTOS/queue.o ./Dev/MiddleWares/FreeRTOS/queue.su ./Dev/MiddleWares/FreeRTOS/stream_buffer.cyclo ./Dev/MiddleWares/FreeRTOS/stream_buffer.d ./Dev/MiddleWares/FreeRTOS/stream_buffer.o ./Dev/MiddleWares/FreeRTOS/stream_buffer.su ./Dev/MiddleWares/FreeRTOS/tasks.cyclo ./Dev/MiddleWares/FreeRTOS/tasks.d ./Dev/MiddleWares/FreeRTOS/tasks.o ./Dev/MiddleWares/FreeRTOS/tasks.su ./Dev/MiddleWares/FreeRTOS/timers.cyclo ./Dev/MiddleWares/FreeRTOS/timers.d ./Dev/MiddleWares/FreeRTOS/timers.o ./Dev/MiddleWares/FreeRTOS/timers.su

.PHONY: clean-Dev-2f-MiddleWares-2f-FreeRTOS

