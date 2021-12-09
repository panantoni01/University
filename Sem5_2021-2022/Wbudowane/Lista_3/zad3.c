#define __AVR_ATmega328P__
#include <avr/io.h>
#include <stdio.h>
#include <inttypes.h>
#include <util/delay.h>

#define BAUD 9600                          // baudrate
#define UBRR_VALUE ((F_CPU)/16/(BAUD)-1)   // zgodnie ze wzorem

#define LED PB5
#define LED_DDR DDRB
#define LED_PORT PORTB

#define DELAY_US(us) for(int i = 0; i < us; i++) _delay_us(1)

// inicjalizacja UART
void uart_init()
{
  // ustaw baudrate
  UBRR0 = UBRR_VALUE;
  // włącz odbiornik i nadajnik
  UCSR0B = _BV(RXEN0) | _BV(TXEN0);
  // ustaw format 8n1
  UCSR0C = _BV(UCSZ00) | _BV(UCSZ01);
}

// transmisja jednego znaku
int uart_transmit(char data, FILE *stream)
{
  // czekaj aż transmiter gotowy
  while(!(UCSR0A & _BV(UDRE0)));
  UDR0 = data;
  return 0;
}

// odczyt jednego znaku
int uart_receive(FILE *stream)
{
  // czekaj aż znak dostępny
  while (!(UCSR0A & _BV(RXC0)));
  return UDR0;
}

// inicjalizacja ADC
void adc_init()
{
  ADMUX   = _BV(REFS0); // referencja AVcc, wejście ADC0
  DIDR0   = _BV(ADC0D); // wyłącz wejście cyfrowe na ADC0
  // częstotliwość zegara ADC 125 kHz (16 MHz / 128)
  ADCSRA  = _BV(ADPS0) | _BV(ADPS1) | _BV(ADPS2); // preskaler 128
  ADCSRA |= _BV(ADEN); // włącz ADC
}

FILE uart_file;
const static uint16_t time_us[] = {
  1,
  2,
  4,
  5,
  7,
  10,
  12,
  15,
  20,
  30,
  35,
  40,
  60,
  80,
  100,
  120,
  160,
  200,
  240,
  320,
  360,
  400,
  480,
  520,
  560,
  640,
  720,
  800,
  900,
  1000,
  1175,
  1350
};

int main()
{
  // zainicjalizuj UART
  uart_init();
  // skonfiguruj strumienie wejścia/wyjścia
  fdev_setup_stream(&uart_file, uart_transmit, uart_receive, _FDEV_SETUP_RW);
  stdin = stdout = stderr = &uart_file;
  // zainicjalizuj ADC
  adc_init();
  // mierz napięcie
  while(1) {
      LED_PORT &= ~_BV(LED);
      ADCSRA |= _BV(ADSC); 
      while (!(ADCSRA & _BV(ADIF)));
      ADCSRA |= _BV(ADIF);
      uint16_t v = ADC; // weź zmierzoną wartość (0..1023)
      
      v >>= 5; // (0..31)
      uint32_t us = time_us[v];
      for(uint8_t i = 0; i < 16; i++) {
        LED_PORT &= ~_BV(LED);
        DELAY_US(us);
        //_delay_us(us);
        LED_PORT |= _BV(LED);
      }
  }
}