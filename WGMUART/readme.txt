This is an example implementation of a full-duplex software UART for
the ATtiny13, ATtiny85, and ATtiny84.
Transmit is on OC0A, and receive can be configured to any PCINT0 pin.
To change the receve pin from the default PB1, modify wgmuart.h.

Blog article:
nerdralph.blogspot.com/2020/06/a-full-duplex-tiny-avr-software-uart.html 

