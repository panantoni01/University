#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>

#define LED PD3
#define LED_DDR DDRD
#define LED_PORT PORTD

#define BTN PB0
#define BTN_PIN PINB
#define BTN_DDR DDRB
#define BTN_PORT PORTB

#define BUF_SIZE 100
#define DELAY 10 

uint8_t increment(uint8_t idx) {
    return (idx + 1) % BUF_SIZE;
}

int main() {
    BTN_DDR &= ~_BV(BTN); /* set BTN to 0 - configure BTN as input pin */
    BTN_PORT |= _BV(BTN); /* If PORTxn is 1, when the pin is configured as an input pin, the pull-up resistor is activated */
    LED_DDR = _BV(LED);

    uint8_t buffer[BUF_SIZE] = {0};
    uint8_t led_idx = 0;
    uint8_t btn_idx = BUF_SIZE - 1;
    
    while (1) {
        if (BTN_PIN & _BV(BTN)) /* BTN is 1 -> BTN is not grounded -> button not pressed */
            buffer[btn_idx] = 0;
        else  /* BTN is 0 -> BTN is grounded -> button pressed */
            buffer[btn_idx] = 1;
        btn_idx = increment(btn_idx);
        
        if (buffer[led_idx] == 1) 
            LED_PORT |= _BV(LED);
        else
            LED_PORT &= ~_BV(LED);
        led_idx = increment(led_idx);

        _delay_ms(DELAY);
    }
}