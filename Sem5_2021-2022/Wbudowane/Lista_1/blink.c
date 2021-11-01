#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>

#define LED PD2
#define LED_DDR DDRD // DDRx - data-directiond register, definiuje czy piny PBx są input(0)/output(1)
#define LED_PORT PORTD // PORTx - manipuluje napięciem na pinach (tych skonfigurowanych na output)

int main() {
  // UCSR0B &= ~_BV(RXEN0) & ~_BV(TXEN0);
  LED_DDR |= _BV(LED); // PB5 jako wyjście 
  while (1) {
    LED_PORT |= _BV(LED); // ustaw na PB5 wysokie napięcie (zapal diodę)
    _delay_ms(1000);
    LED_PORT &= ~_BV(LED); // ustaw na PB5 niskie napięcie (zgaś diodę)
    _delay_ms(1000);
  }
}