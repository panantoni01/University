#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>
#include <inttypes.h>

#define BAUD 9600                          // baudrate
#define UBRR_VALUE ((F_CPU)/16/(BAUD)-1)   // zgodnie ze wzorem

// inicjalizacja UART
void uart_init()
{
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

// inicjalizacja ADC
void adc_init()
{
  ADMUX   = _BV(REFS0); // referencja AVcc, wejście ADC0
  DIDR0   = _BV(ADC0D); // wyłącz wejście cyfrowe na ADC0
  // częstotliwość zegara ADC 125 kHz (16 MHz / 128)
  ADCSRA  = _BV(ADPS0) | _BV(ADPS1) | _BV(ADPS2); // preskaler 128
  ADCSRA |= _BV(ADEN); // włącz ADC
}

void timer1_init() {
    ICR1 = 3906;
    TCCR1A = _BV(COM1A1) | _BV(WGM11);
    TCCR1B = _BV(WGM12) | _BV(WGM13) | _BV(CS10); // preskaler 1
    // częstotliwość 16e6/(1*(1+976)) ~ 16384 Hz
    // ustaw pin OC1A (PB1) jako wyjście
    DDRB |= _BV(PB1);
}

const static uint16_t time[32] = {
    3904, 3700, 3400, 2850, 2048, 1795, 1480, 1024, 860, 720, 512, 430, 360, 256, 210, 180, 128, 104, 88, 64, 54, 45, 32, 27, 24, 16, 14, 8, 7, 4, 2, 1
};

// const static uint16_t time[64] = {
//     3005, 2911, 2818, 2726, 2636, 2547, 2460, 2375, 2290, 2208, 2127, 2047, 1969, 1893, 1818, 1744, 1672, 1602, 1533, 1466, 1400, 1335, 1273, 1211, 1151, 1093, 1036, 981, 927, 875, 824, 775, 727, 681, 636, 593, 552, 511, 473, 436, 400, 366, 333, 302, 273, 245, 218, 193, 170, 148, 127, 109, 91, 75, 61, 48, 37, 27, 18, 12, 6, 3, 1, 0
// };

FILE uart_file;

int main()
{
  // skonfiguruj strumienie wejścia/wyjścia
  fdev_setup_stream(&uart_file, uart_transmit, uart_receive, _FDEV_SETUP_RW);
  stdin = stdout = stderr = &uart_file;
  uart_init();
  adc_init();
  timer1_init();
  
  while(1) {
    ADCSRA |= _BV(ADSC);
    while (!(ADCSRA & _BV(ADIF))); 
    ADCSRA |= _BV(ADIF); 
    uint16_t v = ADC; // (0..1023) (ciemniej...jaśniej)
    // czyli dla v ~ 1023 powinniśmy mieć OCR1A bliskie 0, a dla v ~ 0 - bliskie ICR1 
    // printf("Odczytano: %"PRIu16"\r\n", v);
    v >>= 5;
    OCR1A = time[v];
  }

}