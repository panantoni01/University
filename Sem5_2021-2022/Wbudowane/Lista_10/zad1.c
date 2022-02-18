#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>
#include <inttypes.h>
#include <avr/interrupt.h>

void adc_init() {
    ADMUX   = _BV(REFS0); // referencja AVcc, wejście ADC0
    DIDR0   = _BV(ADC0D); // wyłącz wejście cyfrowe na ADC0
    // częstotliwość zegara ADC 125 kHz (16 MHz / 128)
    ADCSRA  = _BV(ADPS0) | _BV(ADPS1) | _BV(ADPS2); // preskaler 128
    ADCSRA |= _BV(ADEN) | _BV(ADIE); // włącz ADC, interrupt
}

void timer1_init() {
    ICR1 = 2047;
    TCCR1A = _BV(COM1A1) | _BV(WGM11); // gdy licznik dobije do TOP - wyzeruj go
    TCCR1B = _BV(WGM12) | _BV(WGM13) | _BV(CS11); // preskaler 8
    // częstotliwość 16e6/(8*(1+2047)) ~ 976 Hz
    DDRB |= _BV(PB1);
    PORTB |= _BV(PB1);
}

ISR(ADC_vect) {
    OCR1A = 2*ADC;
}

int main() {
    adc_init();
    timer1_init();
    sei();

    while(1) {
        ADCSRA |= _BV(ADSC);
        _delay_ms(1);
    }
}