#include "stm32f401xc.h"

#define LED_PIN 13

void delay(volatile uint32_t count)
{
    while(count--) __NOP(); // prosta pętla opóźniająca
}

int main(void)
{
    // 1. Włącz zegar portu C (RCC AHB1ENR)
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOCEN;

    // 2. Ustaw pin PC13 jako output
    GPIOC->MODER &= ~(0x3 << (LED_PIN * 2)); // wyczyść bity
    GPIOC->MODER |=  (0x1 << (LED_PIN * 2)); // ustaw tryb output

    // 3. Ustaw output type na push-pull
    GPIOC->OTYPER &= ~(1 << LED_PIN);

    // 4. Brak pull-up/pull-down
    GPIOC->PUPDR &= ~(0x3 << (LED_PIN * 2));

    while(1)
    {
        // 5. Włącz LED (PC13 = 0 na większości Blackpill)
        GPIOC->ODR &= ~(1 << LED_PIN);
        delay(500000);

        // 6. Wyłącz LED
        GPIOC->ODR |= (1 << LED_PIN);
        delay(500000);
    }
}
