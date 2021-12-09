#define __AVR_ATmega328P__
#include <avr/io.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>

#include <util/delay.h>

#include <stdio.h>

#include <inttypes.h>

#define BAUD 9600                         // baudrate
#define UBRR_VALUE ((F_CPU)/16/(BAUD)-1)   // zgodnie ze wzorem

#define BTN PD2
#define BTN_PIN PIND
#define BTN_DDR DDRD
#define BTN_PORT PORTD

#define OVERFLOW 62500

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
int uart_transmit(char data, FILE *stream) {
  // czekaj aż transmiter gotowy
  while(!(UCSR0A & _BV(UDRE0)));
  UDR0 = data;
  return 0;
}
// odczyt jednego znaku
int uart_receive(FILE *stream) {
  // czekaj aż znak dostępny
  while (!(UCSR0A & _BV(RXC0)));
  return UDR0;
}
FILE uart_file;

//==============================================
volatile uint16_t counter = 0;

void timer1_init() {
    TCCR1B |= _BV(CS12); // prescaler 256; 16e6/(65536*256) = 0.95Hz
    TCCR1B |= _BV(ICES1); // when the ICES1 bit is written to one, a rising edge will trigger the capture
    TCCR1B |= _BV(WGM12); // CTC mode, TOP = OCR1A
    OCR1A = OVERFLOW;
    TIMSK1 |= _BV(ICIE1) | _BV(OCIE1A); // enable Input Capture Interrupt and Counter1 Compare Match A Interrupt
}

ISR(TIMER1_CAPT_vect) {
  counter++;
}

ISR(TIMER1_COMPA_vect) {
  printf("Frequency: %"PRId16"Hz\r\n", counter);
  counter = 0;
}


int main() {
    timer1_init();
    // zainicjalizuj UART
    uart_init();
    // skonfiguruj strumienie wejścia/wyjścia
    fdev_setup_stream(&uart_file, uart_transmit, uart_receive, _FDEV_SETUP_RW);
    stdin = stdout = stderr = &uart_file;

    sei();

    set_sleep_mode(SLEEP_MODE_IDLE);
    while(1) {
      sleep_mode();
    }
}