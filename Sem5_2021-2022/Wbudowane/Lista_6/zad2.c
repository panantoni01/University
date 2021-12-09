#define __AVR_ATmega328P__
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <inttypes.h>
#include <stdio.h>

#define BAUD 9600                          // baudrate
#define UBRR_VALUE ((F_CPU)/16/(BAUD)-1)   // zgodnie ze wzorem

#define BUF_SIZE 32

static uint8_t recv_buf[BUF_SIZE] = {0};
static uint8_t tran_buf[BUF_SIZE] = {0};
static volatile uint8_t recv_head, recv_tail = 0;
static volatile uint8_t tran_head, tran_tail = 0;


uint8_t increment(uint8_t idx) {
    return (idx + 1) % BUF_SIZE;
}

void uart_init() {
    UBRR0 = UBRR_VALUE;
    UCSR0A = 0;
    UCSR0B = _BV(RXEN0) | _BV(TXEN0) | _BV(RXCIE0) | _BV(TXCIE0) | _BV(UDRIE0); // enable needed interrupts
    UCSR0C = _BV(UCSZ00) | _BV(UCSZ01); // 8-bit data 
}

ISR(USART_RX_vect) { // got unread data in UDR0 - add this to buffer
    recv_buf[recv_tail] = UDR0;
    recv_tail = increment(recv_tail);
}

ISR(USART_TX_vect) {
}

ISR(USART_UDRE_vect) { // UDR0 is empty - therefore ready to transmit data
    if (tran_head != tran_tail) { // non-empty
        UDR0 = tran_buf[tran_head];
        tran_head = increment(tran_head);
    }
    else // empty
        UCSR0B &= ~_BV(UDRIE0);
}

int uart_transmit(char data, FILE *stream) {
    while(increment(tran_tail) == tran_head); // wait until tran_buf is full
    
    cli();
    tran_buf[tran_tail] = (uint8_t) data;
    tran_tail = increment(tran_tail);
    UCSR0B |= _BV(UDRIE0);
    sei();

    return 0;
}

int uart_receive(FILE *stream) {
    while(recv_head == recv_tail); // wait until recv_buffer is empty
    
    cli();
    uint8_t data = recv_buf[recv_head];
    recv_head = increment(recv_head);
    sei();

    return data;
}

FILE uart_file;

int main() {
    uart_init();
    fdev_setup_stream(&uart_file, uart_transmit, uart_receive, _FDEV_SETUP_RW);
    stdin = stdout = stderr = &uart_file;
    
    UCSR0B &= ~_BV(UDRIE0); // unmask Data Register Empty Interrupt
    sei();

    printf("Hello world!\r\n");
    while(1) {
        int16_t a = 1;
        scanf("%"SCNd16, &a);
        printf("Odczytano: %"PRId16"\r\n", a);
    }
}