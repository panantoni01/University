#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>

#define LED_DDR DDRD
#define LED_PORT PORTD
#define LED_ON(led) (LED_PORT &= ~_BV(led))
#define LED_OFF(led) (LED_PORT |= _BV(led))

#define SUPPLY_UNITS PC0
#define SUPPLY_TENS PC1
#define SUPPLY_DDR DDRC
#define SUPPLY_PORT PORTC

const uint8_t num[10] = {
    0b11000000,
    0b11111001,
    0b10100100,
    0b10110000,
    0b10011001,
    0b10010010,
    0b10000010,
    0b11111000,
    0b00000000,
    0b00010000
};

uint8_t increment(uint8_t idx) {
    return (idx + 1) % 10;
}

int main() {
    UCSR0B &= ~_BV(RXEN0) & ~_BV(TXEN0);
    LED_DDR = 0xFF;
    LED_PORT = 0xFF;

    SUPPLY_DDR = (_BV(SUPPLY_TENS) | _BV(SUPPLY_UNITS));
    SUPPLY_PORT = 0;
    
    uint8_t tens = 0;
    uint8_t units = 0;
    while (1) {
        for (uint16_t i = 0; i < 500; i++) {
            /* display units */
            SUPPLY_PORT = _BV(SUPPLY_UNITS);
            LED_PORT = num[units];
            _delay_ms(1);
            
            /* display tens */
            SUPPLY_PORT = _BV(SUPPLY_TENS);
            LED_PORT = num[tens];
            _delay_ms(1);
        }
        if (units == 9)
            tens = increment(tens);
        units = increment(units);
    }
}