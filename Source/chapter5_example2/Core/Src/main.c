#include "stm32f4xx.h"

int main(void)
{
    /* 1. Enable GPIOA clock (AHB1 bus) */
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;

    /* Dummy read to allow clock to stabilize (recommended) */
    (void)RCC->AHB1ENR;

    /* 2. Configure PA5 as general purpose output */
    GPIOA->MODER &= ~(3U << (5 * 2));   // Clear mode bits
    GPIOA->MODER |=  (1U << (5 * 2));   // Output mode

    /* Optional but recommended */
    GPIOA->OTYPER &= ~(1U << 5);        // Push-pull
    GPIOA->OSPEEDR |= (3U << (5 * 2));  // High speed
    GPIOA->PUPDR &= ~(3U << (5 * 2));   // No pull-up/down

    while (1)
    {
//        /* 3. Toggle PA5 */
//        GPIOA->ODR ^= (1U << 5);
//
//        /* Simple delay */
//        for (volatile uint32_t i = 0; i < 500000; i++);

        GPIOA->BSRR = (1U << 5);        // Set PA5
        for (volatile uint32_t i = 0; i < 300000; i++);

        GPIOA->BSRR = (1U << (5 + 16)); // Reset PA5
        for (volatile uint32_t i = 0; i < 300000; i++);
    }
}
