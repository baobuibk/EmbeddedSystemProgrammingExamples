/*
 * app_main.c
 *
 *  Created on: Apr 15, 2026
 *      Author: Admin
 */


/*
 * app_main.c
 *
 *  Created on: Apr 15, 2026
 *      Author: Admin
 */
#include "FreeRTOS.h"
#include "task.h"
void vTask1(void *pvParameters);
void vTask2(void *pvParameters);

void app_main()
{
/* Create the 2 task in exactly the same way. */
  	 xTaskCreate( vTask1, "Task 1", 1000, NULL, 1, NULL );
     xTaskCreate( vTask2, "Task 2", 1000, NULL, 1, NULL );
          /* Start the scheduler so our tasks start executing. */
     vTaskStartScheduler();
     while (1) {}

}

void vTask1(void *pvParameters)
{
	volatile int i = 0;
	while (1)
	{
		i++;
	}
}

void vTask2(void *pvParameters)
{
	volatile int j = 0;
	while (1)
	{
		j++;
	}
}
