#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

#define LED PB5
#define LED_DDR DDRB
#define LED_PORT PORTB

#define BTN PD2
#define BTN_PIN PIND
#define BTN_DDR DDRD
#define BTN_PORT PORTD

#define BUF_SIZE 61 // https://eleccelerator.com/avr-timer-calculator/

uint8_t increment(uint8_t idx) {
    if (idx < BUF_SIZE - 1)
        return idx + 1;
    return 0;
}

void io_init() {
    BTN_PORT |= _BV(BTN); // ustaw pull-up
    LED_DDR |= _BV(LED);
    
    TCCR2B = _BV(CS20) | _BV(CS21) | _BV(CS22); // preskaler 1024
    TIMSK2 |= _BV(TOIE2);  // odmaskowanie przerwania przepełnienia licznika
}

uint8_t buffer[BUF_SIZE] = {0};
uint8_t led_idx = 0;
uint8_t btn_idx = BUF_SIZE - 1;

ISR(TIMER2_OVF_vect) {
    buffer[btn_idx] = !(BTN_PIN & _BV(BTN));
    btn_idx = increment(btn_idx);

    LED_PORT = buffer[led_idx] << LED;
    led_idx = increment(btn_idx);
}

int main() {
    io_init();
    sei();
    set_sleep_mode(SLEEP_MODE_PWR_SAVE);
    
    while(1) {
        sleep_mode();
    }
}