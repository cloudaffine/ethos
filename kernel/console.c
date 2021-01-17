#include "console.h"
#include "layout.h"

// see http://byterunner.com/16550.html
#define RHR UART0                 // receive holding register (for input bytes)
#define THR UART0                 // transmit holding register (for output bytes)
#define LSB_DIVISOR_LATCH  UART0  // LSB of Divisor Latch when Enabled
#define MSB_DIVISOR_LATCH  (UART0 + 1)  // MSB of Divisor Latch when Enabled
#define IER (UART0 + 1)           // interrupt enable register
#define IER_RX_ENABLE (1<<0)
#define IER_TX_ENABLE (1<<1)
#define FCR (UART0 + 2)                 // FIFO control register
#define FCR_FIFO_ENABLE (1<<0)
#define FCR_FIFO_CLEAR (3<<1) // clear the content of the two FIFOs
#define ISR (UART0 + 2)                 // interrupt status register
#define LCR (UART0 + 3)                 // line control register
#define LCR_EIGHT_BITS (3<<0)
#define LCR_BAUD_LATCH (1<<7) // special mode to set baud rate
#define LSR (UART0 + 5)                 // line status register
#define LSR_RX_READY (1<<0)   // input is waiting to be read from RHR
#define LSR_TX_IDLE (1<<5)    // THR can accept another character to send

#define Reg(reg) ((volatile unsigned char *)(reg))
#define ReadReg(reg) (*(Reg(reg)))
#define WriteReg(reg, v) (*(Reg(reg)) = (v))

void console_init() {
    // disable interrupts.
    WriteReg(IER, 0x00);

    // special mode to set baud rate.
    WriteReg(LCR, LCR_BAUD_LATCH);

    // LSB for baud rate of 38.4K.
    WriteReg(LSB_DIVISOR_LATCH, 0x03);

    // MSB for baud rate of 38.4K.
    WriteReg(MSB_DIVISOR_LATCH, 0x00);

    // leave set-baud mode,
    // and set word length to 8 bits, no parity.
    WriteReg(LCR, LCR_EIGHT_BITS);

    // reset and enable FIFOs.
    WriteReg(FCR, FCR_FIFO_ENABLE | FCR_FIFO_CLEAR);

    // enable transmit and receive interrupts.
    WriteReg(IER, IER_TX_ENABLE | IER_RX_ENABLE);

}

int console_putchar(const char c) {
    while((ReadReg(LSR) & LSR_TX_IDLE) == 0) {} // spin
    WriteReg(THR, c);
}

int console_getchar() {
    return 'a'; // TODO
}
