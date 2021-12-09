#define __AVR_ATmega328P__
#include <avr/io.h>
#include <stdio.h>
#include <inttypes.h>
#include <util/delay.h>

#define LA PB1
#define OE PB2
#define MOSI PB3
#define SCK PB5

const uint8_t num[10] = {
    0b11000000,
    0b11111001,
    0b10100100,
    0b10110000,
    0b10011001,
    0b10010010,
    0b10000010,
    0b11111000,
    0b00000000,
    0b00010000
};

// inicjalizacja SPI
void spi_init()
{
    DDRB |= _BV(MOSI) | _BV(LA) | _BV(OE) | _BV(SCK);
    // włącz SPI w trybie master z zegarem 250 kHz
    SPCR = _BV(SPE) | _BV(MSTR) | _BV(SPR1);
}

// transfer jednego bajtu
uint8_t spi_transfer(uint8_t data)
{
    // rozpocznij transmisję
    SPDR = data;
    // czekaj na ukończenie transmisji
    while (!(SPSR & _BV(SPIF)));
    // wyczyść flagę przerwania
    SPSR |= _BV(SPIF);
    // zwróć otrzymane dane
    return SPDR;
}

int main() {
    uint8_t i = 0;
    spi_init();
    PORTB &= ~_BV(OE); // Output is  enabled when OE is low

    while (1) {
        if (i == 10)
            i = 0;
        uint8_t digit = ~num[i++];
        PORTB |= _BV(LA); // Data on shift  register goes through when LA is high. 
        spi_transfer(digit);
        PORTB &= ~_BV(LA); // Data is latched when LA is low. 
        _delay_ms(1000);
    }
    
}