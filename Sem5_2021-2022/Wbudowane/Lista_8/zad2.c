#define __AVR_ATmega328P__
#include "FreeRTOS/Source/include/FreeRTOS.h"
#include "task.h"
#include <avr/io.h>
#include <stdio.h>
#include <inttypes.h>
#include "uart.h"
#include "queue.h"

#define QUEUE_SIZE 16

#define mainREAD_AND_ENQ_PRIORITY   1
#define mainDEQ_AND_BLINK_PRIORITY 2

QueueHandle_t queue_handle;

static void vReadAndEnq(void* pvParameters);
static void vDeqAndBlink(void* pvParameters);

int main(void)
{
    // Create task.
    xTaskHandle readenq_handle;
    xTaskHandle deqblink_handle;

    queue_handle = xQueueCreate(QUEUE_SIZE, sizeof(uint16_t));
    if (queue_handle == NULL) {
       printf("Failed to create a queue!\r\n");
       while(1){ ;}
    }

    xTaskCreate
        (
         vReadAndEnq,
         "read_enq",
         configMINIMAL_STACK_SIZE,
         NULL,
         mainREAD_AND_ENQ_PRIORITY,
         &readenq_handle
        );

    xTaskCreate
        (
         vDeqAndBlink,
         "deq_blink",
         configMINIMAL_STACK_SIZE,
         NULL,
         mainDEQ_AND_BLINK_PRIORITY,
         &deqblink_handle
        );

    // Start scheduler.
    vTaskStartScheduler();

    return 0;
}

void vApplicationIdleHook(void)
{
    
}

////////////////////////////////////////////////

static void vReadAndEnq(void* pvParameters)
{
    uart_init();
    stdin = stdout = stderr = &uart_file;

    while (1) {
        uint16_t ms_time = 0;
        char input;
        while (1) {
            input = getchar();
            if (input == '\r' || input == '\n')
                break;
            ms_time *= 10;
            ms_time += input - '0';
        }

        if (xQueueSend(queue_handle, &ms_time, 0) == errQUEUE_FULL)
            printf("Queue is full!\r\n");
    }
}

#define LED PD5
#define LED_DDR DDRD
#define LED_PORT PORTD
#define DELAY 500

static void vDeqAndBlink(void* pvParameters)
{
    LED_DDR = _BV(LED);

    while (1) {
        uint16_t ms_time;
        if (xQueueReceive(queue_handle, &ms_time, 20) == errQUEUE_EMPTY)
            continue;

        printf("Dequeued: %"PRId16"\r\n", ms_time);
        LED_PORT |= _BV(LED);
        vTaskDelay(ms_time / portTICK_PERIOD_MS);
        LED_PORT &= ~_BV(LED);

        vTaskDelay(DELAY / portTICK_PERIOD_MS);
    }

}