#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>

#define LED_DDR DDRB
#define LED_PORT PORTD

#define SEC 1000

const int number[10] = {
    0b0000000,
    0b0000000,
    0b0000000,
    0b0000000,
    0b0000000,
    0b0000000,
    0b0000000,
    0b0000000,
    0b0000000,
    0b0000000,
};

int main() {
    UCSR0B &= ~_BV(RXEN0) & ~_BV(TXEN0);
    LED_DDR = 0xFF;
    LED_PORT = 0;

    while (1) {
        for (int8_t i = 0; i < 10; i++) {
            PORTD = number[i];
            _delay_ms(SEC);
        }
    }
}