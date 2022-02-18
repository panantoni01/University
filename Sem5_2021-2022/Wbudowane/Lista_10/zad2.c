#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>
#include <inttypes.h>
#include <avr/interrupt.h>

#define BAUD 9600                          // baudrate
#define UBRR_VALUE ((F_CPU)/16/(BAUD)-1)   // zgodnie ze wzorem

void uart_init() {
  UBRR0 = UBRR_VALUE;
  UCSR0A = 0;
  UCSR0B = _BV(RXEN0) | _BV(TXEN0);
  UCSR0C = _BV(UCSZ00) | _BV(UCSZ01);
}

int uart_transmit(char data, FILE *stream) {
  while(!(UCSR0A & _BV(UDRE0)));
  UDR0 = data;
  return 0;
}

int uart_receive(FILE *stream) {
  while (!(UCSR0A & _BV(RXC0)));
  return UDR0;
}

FILE uart_file;

//=====================================================

void adc_init() {
    ADMUX   = _BV(REFS0); // referencja AVcc, wejście ADC0
    DIDR0   = _BV(ADC0D); // wyłącz wejście cyfrowe na ADC0
    // częstotliwość zegara ADC 125 kHz (16 MHz / 128)
    ADCSRA  = _BV(ADPS0) | _BV(ADPS1) | _BV(ADPS2); // preskaler 128
    ADCSRA |= _BV(ADEN) | _BV(ADIE); // włącz ADC, interrupt
}

void timer1_init() {
    ICR1 = 1024;
    TCCR1A = _BV(COM1A1); // clear while upcounting, set while downcounting
    TCCR1B = _BV(WGM13) | _BV(CS11); // PWM Phase & Frequency, TOP=ICR1;  preskaler 8
    // częstotliwość 16e6/(2*8*1024) ~ 976 Hz
    DDRB |= _BV(PB1);
    PORTB |= _BV(PB1);
    // włączenie przerwań
    TIMSK1 |= _BV(TOIE1) | _BV(ICIE1);
}

volatile int8_t mosfet_on;
volatile int8_t mosfet_off;
volatile int8_t potentiometer;
volatile uint16_t mosfet_on_val;
volatile uint16_t mosfet_off_val;

/* licznik osiąga BOTTOM */
ISR(TIMER1_OVF_vect) {
  ADCSRA |= _BV(ADSC);
  mosfet_on = 1;
  ADMUX   = _BV(REFS0) | _BV(MUX0);
}

/* licznik osiąga TOP */
ISR(TIMER1_CAPT_vect) {
  ADCSRA |= _BV(ADSC);
  mosfet_off = 1;
  ADMUX   = _BV(REFS0) | _BV(MUX0);
}

ISR(ADC_vect) {
  if ((ADMUX & _BV(MUX0)) && mosfet_on) {
    mosfet_on_val = ADC;
    mosfet_on = 0;
  }
  if ((ADMUX & _BV(MUX0)) && mosfet_off) {
    mosfet_off_val = ADC;
    mosfet_off = 0;
  }
  else if ((ADMUX & _BV(MUX0) == 0) && potentiometer) {
    OCR1A = ADC;
    potentiometer = 0;
  }
}

int main() {
    uart_init();
    fdev_setup_stream(&uart_file, uart_transmit, uart_receive, _FDEV_SETUP_RW);
    stdin = stdout = stderr = &uart_file;
    adc_init();
    timer1_init();
    sei();

    while(1) {
      cli();
      ADCSRA |= _BV(ADSC);
      potentiometer = 1;
      ADMUX   = _BV(REFS0);
      sei();

      uint16_t on_printf = (uint16_t)((uint32_t)mosfet_on_val * 5000 / 1023);
      uint16_t off_printf = (uint16_t)((uint32_t)mosfet_off_val * 5000 / 1023); 
      printf("MOSFET on: %"PRId16"mV, MOSFET off: %"PRId16"mV\r\n", on_printf, off_printf);
    }
}