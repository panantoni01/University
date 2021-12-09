#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <stdio.h>
#include <inttypes.h>

#define BAUD 9600                         // baudrate
#define UBRR_VALUE ((F_CPU)/16/(BAUD)-1)   // zgodnie ze wzorem

#define BTN PD2
#define BTN_PIN PIND
#define BTN_DDR DDRD
#define BTN_PORT PORTD

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

//================================================

void io_init() {
    BTN_PORT |= _BV(BTN); // ustaw pull-up
    EICRA |= _BV(ISC01) | _BV(ISC00); // ustaw wyzwalanie przerwania na INT0 zboczem narastającym
    EIMSK |= _BV(INT0) | _BV(ADC); // odmaskuj przerwania dla INT0 i ADC
}

void adc_init() {
    ADMUX   = _BV(REFS0); // referencja AVcc, wejście ADC0
    DIDR0   = _BV(ADC0D); // wyłącz wejście cyfrowe na ADC0

    ADCSRA  = _BV(ADPS0) | _BV(ADPS1) | _BV(ADPS2); // preskaler 128
    ADCSRA |= _BV(ADIE) | _BV(ADATE); // Auto Triggering of the ADC is enabled. The ADC will start a conversion on a positive edge of the selected trigger signal
    ADCSRB |= _BV(ADTS1); // External Interrupt Request 0
    ADCSRA |= _BV(ADEN); // włącz ADC
}

volatile uint16_t volt = 0; // (0..1023)

ISR(INT0_vect) {
}

ISR(ADC_vect) {
    volt = ADC;
}

int main() {
    io_init();
    adc_init();
    // zainicjalizuj UART
    uart_init();
    // skonfiguruj strumienie wejścia/wyjścia
    fdev_setup_stream(&uart_file, uart_transmit, uart_receive, _FDEV_SETUP_RW);
    stdin = stdout = stderr = &uart_file;

    sei();
    
    while(1) {
        cli(); //begin critical section
        uint32_t resistance = 10000 - (10000 * (uint32_t)volt / 1023);
        printf("Volt: %"PRId16"\r\n", volt);
        printf("Resistance: %"PRId32"\r\n", resistance);
        sei(); // end critical section
        _delay_ms(1000);
    }
}