#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>

#define LED_DDR DDRD
#define LED_PORT PORTD

#define BTN_RST  PB0
#define BTN_NEXT PB1
#define BTN_PREV PB2 

#define BTN_PIN  PINB
#define BTN_DDR  DDRB 
#define BTN_PORT PORTB
#define IS_PRESSED(btn) (!(BTN_PIN & _BV(btn)))

#define DEBOUNCE_DELAY 5
#define DEBOUNCE_COUNT 4

#define GRAY_CONST 16

uint8_t debounce(uint8_t btn, uint8_t count) {
    for (uint8_t i = 0; i < count; i++) {
        if (!IS_PRESSED(btn))
            return 0;
        _delay_ms(DEBOUNCE_DELAY);
    }
    return 1;
}

uint8_t BinaryToGray(uint8_t num){
    return num ^ (num >> 1);
}
uint8_t GrayIncr(uint8_t gray_code) {
    return (gray_code + 1) % GRAY_CONST;
}
uint8_t GrayDecr(uint8_t gray_code) {
    return (gray_code + GRAY_CONST - 1) % GRAY_CONST;
}

int main() {
    UCSR0B &= ~_BV(RXEN0) & ~_BV(TXEN0);
    LED_DDR = 0x0F;
    LED_PORT = 0x00;

    BTN_DDR &= (~_BV(BTN_RST) & ~_BV(BTN_NEXT) & ~_BV(BTN_PREV));
    BTN_PORT |= (_BV(BTN_RST) | _BV(BTN_NEXT) | _BV(BTN_PREV));
    
    uint8_t gray_code = 0;
    
    while (1) {
        if (debounce(BTN_RST, DEBOUNCE_COUNT)) {
            gray_code = 0;
            LED_PORT = 0;
            while(IS_PRESSED(BTN_RST));
        }
        if (debounce(BTN_NEXT, DEBOUNCE_COUNT)) {
            gray_code = GrayIncr(gray_code);
            LED_PORT = BinaryToGray(gray_code);
            while(IS_PRESSED(BTN_NEXT));
        }
        if (debounce(BTN_PREV, DEBOUNCE_COUNT)) {
            gray_code = GrayDecr(gray_code);
            LED_PORT = BinaryToGray(gray_code);
            while(IS_PRESSED(BTN_PREV));
        }
    }
}