#define __AVR_ATmega328P__
#include "FreeRTOS/Source/include/FreeRTOS.h"
#include "task.h"
#include <avr/io.h>
#include <stdio.h>
#include "uart.h"

#define mainBUTTON_PRIORITY   1
#define mainBARGRAPH_PRIORITY 1

static void vButtonLED(void* pvParameters);
static void vBargraphLED(void* pvParameters);


int main(void)
{
    // Create task.
    xTaskHandle button_handle;
    xTaskHandle bargraph_handle;

    xTaskCreate
        (
         vButtonLED,
         "button",
         configMINIMAL_STACK_SIZE,
         NULL,
         mainBUTTON_PRIORITY,
         &button_handle
        );

    xTaskCreate
        (
         vBargraphLED,
         "bargraph",
         configMINIMAL_STACK_SIZE,
         NULL,
         mainBARGRAPH_PRIORITY,
         &bargraph_handle
        );

    // Start scheduler.
    vTaskStartScheduler();

    return 0;
}

void vApplicationIdleHook(void)
{

}



////////////////////////////////////////////////

#define LED PB5
#define LED_DDR DDRB
#define LED_PORT PORTB

#define BTN PC3
#define BTN_PIN PINC
#define BTN_DDR DDRC
#define BTN_PORT PORTC

#define BUF_SIZE 100
#define DELAY 10 

uint8_t increment(uint8_t idx) {
    if (idx == BUF_SIZE - 1)
        return 0;
    return idx + 1;
}

static void vButtonLED(void* pvParameters)
{
    BTN_DDR &= ~_BV(BTN);
    BTN_PORT |= _BV(BTN);
    LED_DDR = _BV(LED);
    
    uint8_t buffer[BUF_SIZE] = {0};
    uint8_t led_idx = 0;
    uint8_t btn_idx = BUF_SIZE - 1;

    while (1) {
        if (BTN_PIN & _BV(BTN)) /* button not pressed */
            buffer[btn_idx] = 0;
        else  /* button pressed */
            buffer[btn_idx] = 1;
        btn_idx = increment(btn_idx);
        
        if (buffer[led_idx] == 1) 
            LED_PORT |= _BV(LED);
        else
            LED_PORT &= ~_BV(LED);
        led_idx = increment(led_idx);

        vTaskDelay(DELAY / portTICK_PERIOD_MS);
    }
}

#define BAR_DDR DDRD
#define BAR_PORT PORTD

#define BAR_TIME 100

static void vBargraphLED(void* pvParameters)
{
    UCSR0B &= ~_BV(RXEN0) & ~_BV(TXEN0);
    BAR_DDR = 0xFF;
    BAR_PORT = 0x03;  
    
    while(1) {
        int8_t i = 1;
        do {
           BAR_PORT <<= 1;
            i++;
            vTaskDelay(BAR_TIME / portTICK_PERIOD_MS);
        }
        while(i < 7);

        do {
            BAR_PORT >>= 1;
            i--;
            vTaskDelay(BAR_TIME / portTICK_PERIOD_MS);
        }
        while(i >= 2);
    }
}