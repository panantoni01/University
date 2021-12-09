#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>
#include <inttypes.h>

#define BAUD 9600                          // baudrate
#define UBRR_VALUE ((F_CPU)/16/(BAUD)-1)   // zgodnie ze wzorem

#define DELAY 600

#define LED PB5
#define LED_PORT PORTB

#define IRDIODE PB1
#define IRDIODE_PORT PORTB

#define IRDETECT PB0
#define IRDETECT_PIN PINB

void timer1_init() {
    // CS10 - preskaler 1
    // WGM13 | WGM12 - CTC, top=ICR1
    // COM1A0 - toggle on compare match
    ICR1 = 210;
    TCCR1A = _BV(COM1A0);
    TCCR1B = _BV(WGM13) | _BV(WGM12) | _BV(CS10);
    // częstotliwość 16e6/(2*1*(1+210)) = 37,914 kHz
    // IRDIODE_DDR |= _BV(IRDIODE);
}


int main() {
    DDRB |= _BV(LED);
    LED_PORT &= ~_BV(LED); 

    DDRB&= ~_BV(IRDETECT); // ustaw PB0 jako wejście
    
    timer1_init();
    while(1) {
        // wyślij impuls - ustaw pin OC1A (PB1) jako wyjście
        DDRB |= _BV(IRDIODE);
        _delay_us(DELAY);
        DDRB &= ~_BV(IRDIODE);

        if (!(IRDETECT_PIN &= _BV(IRDETECT))) // IR detectors are digital out - either they detect 38KHz IR signal and output low (0V) or they do not detect any and output high (5V). 
            LED_PORT |= _BV(LED);
        else
            LED_PORT &= ~_BV(LED);

        _delay_us(DELAY);
    }
}