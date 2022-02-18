#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>
#include <inttypes.h>
#include "hd44780.h"


int main() {
    LCD_Initialize();
    
    uint8_t pattern = 0x00;
    for (int i = 0; i < 6; i++) {
        LCD_WriteCommand(HD44780_CGRAM_SET | (i * 8));
        for (int j = 0; j < 8; j++)
            LCD_WriteData(pattern);
        
        pattern = (pattern >> 1) | 0x10;
    }

    while(1) {
        LCD_Clear();
        LCD_GoTo(0, 1);
        
        for (int i = 0; i < 16; i++) {
            for (int col = 1; col < 6; col++) {
                LCD_GoTo(i, 1);
                LCD_WriteData(col);
                _delay_ms(100);
            }
        }
        _delay_ms(2000);
    }
}