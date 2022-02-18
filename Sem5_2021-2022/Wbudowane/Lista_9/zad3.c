#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>
#include <inttypes.h>
#include <avr/interrupt.h>

#define BAUD 9600                          // baudrate
#define UBRR_VALUE ((F_CPU)/16/(BAUD)-1)   // zgodnie ze wzorem

#define HEATER PB5
#define HEATER_PORT PORTB
#define HEATER_DDR DDRB


// inicjalizacja UART
void uart_init() {
  // ustaw baudrate
  UBRR0 = UBRR_VALUE;
  // wyczyść rejestr UCSR0A
  UCSR0A = 0;
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

FILE uart_file;

//=====================================================

void adc_init() {
  ADMUX   = _BV(REFS1) | _BV(REFS0); // referencja 1.1V, wejście ADC0
  DIDR0   = _BV(ADC0D); // wyłącz wejście cyfrowe na ADC0
  // częstotliwość zegara ADC 125 kHz (16 MHz / 128)
  ADCSRA  = _BV(ADPS0) | _BV(ADPS1) | _BV(ADPS2); // preskaler 128
  ADCSRA |= _BV(ADEN) | _BV(ADIE); // włącz ADC, interrupt
}

//=====================================================

volatile int8_t usr_temp = 40;
volatile uint16_t counter = 0;

ISR(ADC_vect){ 
  counter++;
  float temp = 0.0;
  if (counter % 64 == 0) { /* adjust the heater */
    temp = (((float)ADC) / 1024.0 * 1.1 - 0.5) * 100.0; /* http://ww1.microchip.com/downloads/en/DeviceDoc/20001942G.pdf */
    
    if (temp < (float)(usr_temp - 1))
      HEATER_PORT |= _BV(HEATER);
    else if (temp > (float)usr_temp)
      HEATER_PORT &= ~_BV(HEATER);
  }
  if (counter % 1024 == 0) {
    counter = 0;
    printf("Requested: %"PRId8" Temperature is: %"PRId8"\r\n", usr_temp,  (int8_t)temp);
  }
}

//=====================================================

void timer1_init() {
  ICR1 = 0; 
  TCCR1A = _BV(COM1A1) | _BV(WGM11); // gdy licznik dobije do TOP - wyzeruj go
  TCCR1B = _BV(WGM12) | _BV(WGM13) | _BV(CS10) | _BV(CS12);
  TIMSK1 |= _BV(TOIE0);
}

ISR(TIMER1_OVF_vect) {
  ADCSRA |= _BV(ADSC);
}

//=====================================================

int main() {
    uart_init();
    fdev_setup_stream(&uart_file, uart_transmit, uart_receive, _FDEV_SETUP_RW);
    stdin = stdout = stderr = &uart_file;
    adc_init();
    timer1_init();
    
    HEATER_DDR |= _BV(HEATER);
    HEATER_PORT &= ~_BV(HEATER);
    
    sei();

    while(1) {
        scanf("%"SCNd8, &usr_temp);
    }
}