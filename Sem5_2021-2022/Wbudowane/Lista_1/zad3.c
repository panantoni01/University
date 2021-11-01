#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>
#include <stdint.h>
#include <inttypes.h>

#define LED_DDR DDRD
#define LED_PORT PORTD

#define LED_TIME 40

int main() {
  UCSR0B &= ~_BV(RXEN0) & ~_BV(TXEN0);
  LED_DDR = 0xFF;
  LED_PORT = 0x03;  
  
  while(1) {
      int8_t i = 1;
      do {
        LED_PORT <<= 1;
        i++;
        _delay_ms(LED_TIME);
      }
      while(i < 7);

      do {
          LED_PORT >>= 1;
          i--;
          _delay_ms(LED_TIME);
      }
      while(i >= 2);
  }
}