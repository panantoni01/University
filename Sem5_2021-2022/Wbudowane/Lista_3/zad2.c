#define __AVR_ATmega328P__
#include <avr/io.h>
#include <stdio.h>
#include <inttypes.h>
#include <util/delay.h>

#define BAUD 9600                          // baudrate
#define UBRR_VALUE ((F_CPU)/16/(BAUD)-1)   // zgodnie ze wzorem
#define FREQ 1000

#define LED PB5
#define LED_DDR DDRB
#define LED_PORT PORTB

// inicjalizacja UART
void uart_init() {
  // ustaw baudrate
  UBRR0 = UBRR_VALUE;
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

// inicjalizacja ADC
void adc_init() {
  ADMUX   = _BV(REFS0) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1); // referencja AVcc, 1.1V
  DIDR0   = _BV(ADC0D); // wyłącz wejście cyfrowe na ADC0
  // częstotliwość zegara ADC 125 kHz (16 MHz / 128)
  ADCSRA  = _BV(ADPS0) | _BV(ADPS1) | _BV(ADPS2); // preskaler 128
  ADCSRA |= _BV(ADEN); // włącz ADC
}

FILE uart_file;
int main() {
    LED_DDR |= _BV(LED);
    // zainicjalizuj UART
    uart_init();
    // skonfiguruj strumienie wejścia/wyjścia
    fdev_setup_stream(&uart_file, uart_transmit, uart_receive, _FDEV_SETUP_RW);
    stdin = stdout = stderr = &uart_file;
    // zainicjalizuj ADC
    adc_init();
  
    uint8_t i = 1;
    while(1) {
        if (i++ % 2 == 1) 
           LED_PORT |= _BV(LED);
        else
          LED_PORT &= ~_BV(LED);
        
        ADCSRA |= _BV(ADSC);
        while (!(ADCSRA & _BV(ADIF)));
        ADCSRA |= _BV(ADIF);
        uint16_t volt = 1126400L / ADC; //according to formula ADC=(Vin*1024/Vref); ADC - value from range (0..1023)
        printf("Voltage: %"PRId16"mV\r\n", volt);
        
        _delay_ms(FREQ);
    }
}