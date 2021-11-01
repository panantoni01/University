#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>

#define LED PD5
#define LED_DDR DDRD
#define LED_PORT PORTD

#define BTN PD4
#define BTN_PIN PIND
#define BTN_DDR DDRD
#define BTN_PORT PORTD

int main() {
  BTN_DDR &= ~_BV(BTN);
  BTN_PORT |= _BV(BTN); /* If PORTxn is 1, when the pin is configured as an input pin, the pull-up resistor is activated */
  LED_DDR |= _BV(LED);
  while (1) {
    if (BTN_PIN & _BV(BTN))
      LED_PORT &= ~_BV(LED);
    else
      LED_PORT |= _BV(LED);
  }
}
