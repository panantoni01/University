#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>
#include <avr/pgmspace.h>

#define BUZZ PD5
#define BUZZ_DDR DDRD
#define BUZZ_PORT PORTD

#define TONE_C1  130
#define TONE_CS1 138
#define TONE_D1  146
#define TONE_DS1 155
#define TONE_E1  164
#define TONE_F1  174
#define TONE_FS1 185
#define TONE_G1  196
#define TONE_GS1 207
#define TONE_A1  220
#define TONE_AS1 233
#define TONE_B1  246

#define TONE_C2  261
#define TONE_CS2 277
#define TONE_D2  293
#define TONE_DS2 311
#define TONE_E2  329
#define TONE_F2  349
#define TONE_FS2 369
#define TONE_G2  392
#define TONE_GS2 415
#define TONE_A2  440
#define TONE_AS2 466
#define TONE_B2  493
#define PAUSE    1

#define WHOLE 2000
#define HALF  1000
#define QUART 500
#define EIGHT 250
#define SIXTN 125

typedef struct /*__attribute__((packed, aligned(1)))*/{
    uint16_t tone;
    uint16_t time;
} note_t;

const static note_t melody[] PROGMEM = {
    {TONE_E2, EIGHT},
    {TONE_DS2, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_DS2, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_B1, EIGHT},
    {TONE_D2, EIGHT},
    {TONE_C2, EIGHT},
    {TONE_A1, QUART},
    {PAUSE, EIGHT},
    
    {TONE_C1, EIGHT},
    {TONE_E1, EIGHT},
    {TONE_A1, EIGHT},
    {TONE_B1, QUART},
    {PAUSE, EIGHT},
    
    {TONE_E1, EIGHT},
    {TONE_GS1, EIGHT},
    {TONE_B1, EIGHT},
    {TONE_C2, QUART},
    {PAUSE, EIGHT},
    
    {TONE_E1, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_DS2, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_DS2, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_B1, EIGHT},
    {TONE_D2, EIGHT},
    {TONE_C2, EIGHT},
    {TONE_A1, QUART},
    {PAUSE, EIGHT},

    {TONE_C1, EIGHT},
    {TONE_E1, EIGHT},
    {TONE_A1, EIGHT},
    {TONE_B1, QUART},
    {PAUSE, EIGHT},

    {TONE_E1, EIGHT},
    {TONE_C2, EIGHT},
    {TONE_B1, EIGHT},
    {TONE_A1, HALF},

    {TONE_E2, EIGHT},
    {TONE_DS2, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_DS2, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_B1, EIGHT},
    {TONE_D2, EIGHT},
    {TONE_C2, EIGHT},
    {TONE_A1, QUART},
    {PAUSE, EIGHT},

    {TONE_B1, EIGHT},
    {TONE_C2, EIGHT},
    {TONE_D2, EIGHT},
    {TONE_E2, QUART},

    {TONE_G1, EIGHT},
    {TONE_F2, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_D2, QUART},

    {TONE_F1, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_D2, EIGHT},
    {TONE_C1, QUART},

    {TONE_E1, EIGHT},
    {TONE_D2, EIGHT},
    {TONE_C2, EIGHT},
    {TONE_B1, QUART},
    {PAUSE, EIGHT},

    {TONE_E1, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_DS2, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_DS2, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_E1, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_DS2, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_DS2, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_B1, EIGHT},
    {TONE_D2, EIGHT},
    {TONE_C2, EIGHT},
    {TONE_A1, QUART},
    {PAUSE, EIGHT},

    {TONE_C1, EIGHT},
    {TONE_E1, EIGHT},
    {TONE_A1, EIGHT},
    {TONE_B1, QUART},
    {PAUSE, EIGHT},

    {TONE_E1, EIGHT},
    {TONE_GS1, EIGHT},
    {TONE_B1, EIGHT},
    {TONE_C2, QUART},
    {PAUSE, EIGHT},

    {TONE_E1, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_DS2, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_DS2, EIGHT},
    {TONE_E2, EIGHT},
    {TONE_B1, EIGHT},
    {TONE_D2, EIGHT},
    {TONE_C2, EIGHT},
    {TONE_A1, QUART},
    {PAUSE, EIGHT},

    {TONE_C1, EIGHT},
    {TONE_E1, EIGHT},
    {TONE_A1, EIGHT},
    {TONE_B1, QUART},
    {PAUSE, EIGHT},

    {TONE_E1, EIGHT},
    {TONE_C2, EIGHT},
    {TONE_B1, EIGHT},
    {TONE_A1, HALF},
    {PAUSE, EIGHT},
};

#define DELAY_US(us) for(int i = 0; i < us; i++) _delay_us(1)
#define TONE(step, delay) \
    for (uint16_t i = 0; i < (uint32_t)1000 * (delay) / (step) / 2; i++) { \
      BUZZ_PORT |= _BV(BUZZ); \
      DELAY_US(step); \
      BUZZ_PORT &= ~_BV(BUZZ); \
      DELAY_US(step); \
    }

int main() {
    BUZZ_DDR |= _BV(BUZZ);
    while (1) {
        for (uint8_t i = 0; i < 115; i++) {
            note_t note;
            note.tone = pgm_read_word(&(melody[i].tone));
            note.time = pgm_read_word(&(melody[i].time));
            if (note.tone == PAUSE)
                DELAY_US(1000 * note.time);
            else
                TONE(1000000 / (10*note.tone), note.time);
        }
        _delay_ms(5000);
    }
}