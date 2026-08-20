################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/MiddleWare/FreeRTOS/croutine.c \
../Dev/MiddleWare/FreeRTOS/event_groups.c \
../Dev/MiddleWare/FreeRTOS/list.c \
../Dev/MiddleWare/FreeRTOS/queue.c \
../Dev/MiddleWare/FreeRTOS/stream_buffer.c \
../Dev/MiddleWare/FreeRTOS/tasks.c \
../Dev/MiddleWare/FreeRTOS/timers.c 

OBJS += \
./Dev/MiddleWare/FreeRTOS/croutine.o \
./Dev/MiddleWare/FreeRTOS/event_groups.o \
./Dev/MiddleWare/FreeRTOS/list.o \
./Dev/MiddleWare/FreeRTOS/queue.o \
./Dev/MiddleWare/FreeRTOS/stream_buffer.o \
./Dev/MiddleWare/FreeRTOS/tasks.o \
./Dev/MiddleWare/FreeRTOS/timers.o 

C_DEPS += \
./Dev/MiddleWare/FreeRTOS/croutine.d \
./Dev/MiddleWare/FreeRTOS/event_groups.d \
./Dev/MiddleWare/FreeRTOS/list.d \
./Dev/MiddleWare/FreeRTOS/queue.d \
./Dev/MiddleWare/FreeRTOS/stream_buffer.d \
./Dev/MiddleWare/FreeRTOS/tasks.d \
./Dev/MiddleWare/FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/MiddleWare/FreeRTOS/%.o Dev/MiddleWare/FreeRTOS/%.su Dev/MiddleWare/FreeRTOS/%.cyclo: ../Dev/MiddleWare/FreeRTOS/%.c Dev/MiddleWare/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRTOS_STM32F407_Example2/Dev/MiddleWare/FreeRTOS/portable/GCC/ARM_CM4F" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRTOS_STM32F407_Example2/Dev/MiddleWare/FreeRTOS/portable/MemMang" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRTOS_STM32F407_Example2/Dev/MiddleWare/FreeRTOS/include" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRTOS_STM32F407_Example2/Dev/Application/Config" -I"D:/PROJECT/BOOK_EXAMPLE/Book_Example_Repos/Source/FreeRTOS_STM32F407_Example2/Dev/Application/Application" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Dev-2f-MiddleWare-2f-FreeRTOS

clean-Dev-2f-MiddleWare-2f-FreeRTOS:
	-$(RM) ./Dev/MiddleWare/FreeRTOS/croutine.cyclo ./Dev/MiddleWare/FreeRTOS/croutine.d ./Dev/MiddleWare/FreeRTOS/croutine.o ./Dev/MiddleWare/FreeRTOS/croutine.su ./Dev/MiddleWare/FreeRTOS/event_groups.cyclo ./Dev/MiddleWare/FreeRTOS/event_groups.d ./Dev/MiddleWare/FreeRTOS/event_groups.o ./Dev/MiddleWare/FreeRTOS/event_groups.su ./Dev/MiddleWare/FreeRTOS/list.cyclo ./Dev/MiddleWare/FreeRTOS/list.d ./Dev/MiddleWare/FreeRTOS/list.o ./Dev/MiddleWare/FreeRTOS/list.su ./Dev/MiddleWare/FreeRTOS/queue.cyclo ./Dev/MiddleWare/FreeRTOS/queue.d ./Dev/MiddleWare/FreeRTOS/queue.o ./Dev/MiddleWare/FreeRTOS/queue.su ./Dev/MiddleWare/FreeRTOS/stream_buffer.cyclo ./Dev/MiddleWare/FreeRTOS/stream_buffer.d ./Dev/MiddleWare/FreeRTOS/stream_buffer.o ./Dev/MiddleWare/FreeRTOS/stream_buffer.su ./Dev/MiddleWare/FreeRTOS/tasks.cyclo ./Dev/MiddleWare/FreeRTOS/tasks.d ./Dev/MiddleWare/FreeRTOS/tasks.o ./Dev/MiddleWare/FreeRTOS/tasks.su ./Dev/MiddleWare/FreeRTOS/timers.cyclo ./Dev/MiddleWare/FreeRTOS/timers.d ./Dev/MiddleWare/FreeRTOS/timers.o ./Dev/MiddleWare/FreeRTOS/timers.su

.PHONY: clean-Dev-2f-MiddleWare-2f-FreeRTOS

