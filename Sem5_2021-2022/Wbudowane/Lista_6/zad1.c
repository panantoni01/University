#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

#define BAUD 9600                         // baudrate
#define UBRR_VALUE ((F_CPU)/16/(BAUD)-1)   // zgodnie ze wzorem

void uart_init() {
    UBRR0 = UBRR_VALUE;
    UCSR0A = 0;
    UCSR0B = _BV(RXEN0) | _BV(TXEN0) | _BV(RXCIE0); 
    UCSR0C = _BV(UCSZ00) | _BV(UCSZ01); // 8-bit data 
}

ISR(USART_RX_vect) {
    char received = UDR0;
    UDR0 = received;
}

int main() {
    uart_init();
    sei();
    set_sleep_mode(SLEEP_MODE_IDLE);
    
    while(1) {
        sleep_mode();
    }
}