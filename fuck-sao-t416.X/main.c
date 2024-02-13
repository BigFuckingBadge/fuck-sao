/*
 * File:   main.c
 * Author: Hexum064
 *
 * Created on February 12, 2024, 1:03 PM
 */


#define F_CPU 20000000U
#include <avr/io.h>
#include <util/delay.h>

#define PORTA_PINS (PIN1_bm | PIN2_bm | PIN3_bm | PIN4_bm | PIN5_bm | PIN6_bm | PIN7_bm)
#define PORTB_PINS (PIN0_bm | PIN1_bm | PIN2_bm | PIN3_bm | PIN4_bm | PIN5_bm)
#define BUTTON_PIN PIN0_bm
#define DEBUG_PIN_IN PIN1_bm
#define DEBUG_PIN_OUT (PIN2_bm | PIN3_bm)
char index = 0;


void init_clk()
{
	CCP = CCP_IOREG_gc;
	CLKCTRL.MCLKCTRLA = CLKCTRL_CLKSEL_OSC20M_gc;
	CCP = CCP_IOREG_gc;
	CLKCTRL.MCLKCTRLB = 0;
}

void init_io() {
    PORTA.DIRSET = PORTA_PINS;
    PORTB.DIRSET = PORTB_PINS;
    PORTC.DIRCLR = BUTTON_PIN | DEBUG_PIN_IN;
    PORTC.DIRSET = DEBUG_PIN_OUT;
}

void switch_led(char index) {
    
    PORTA.OUTCLR = PORTA_PINS;
    PORTB.OUTCLR = PORTB_PINS;    
    
    switch(index) {
        case 1:
            PORTA.OUTSET = PIN2_bm;
            break;
        case 2:
            PORTA.OUTSET = PIN3_bm;
            break;
        case 3:
            PORTA.OUTSET = PIN4_bm;
            break;
        case 4:
            PORTA.OUTSET = PIN5_bm;
            break;
        case 5:
            PORTA.OUTSET = PIN6_bm;
            break;
        case 6:
            PORTA.OUTSET = PIN7_bm;
            break;
        case 7:
            PORTB.OUTSET = PIN0_bm;
            break;
        case 8:
            PORTB.OUTSET = PIN1_bm;
            break;
        case 9:
            PORTB.OUTSET = PIN2_bm;
            break;
        case 10:
            PORTB.OUTSET = PIN3_bm;
            break;
        case 11:
            PORTB.OUTSET = PIN4_bm;
            break;
        case 12:
            PORTB.OUTSET = PIN5_bm;
            break;
        case 0:
        default:
            PORTA.OUTSET = PIN1_bm;
            break;
            
         
    }
}

void main(void) {
    
    init_clk();
    
    init_io();
    

    while(1) {
        PORTB.OUTCLR = PIN5_bm;
        PORTA.OUTSET = PIN1_bm;
        _delay_ms(500);
        PORTA.OUTCLR = PIN1_bm;
        PORTA.OUTSET = PIN2_bm;
        _delay_ms(500);
        PORTA.OUTCLR = PIN2_bm;
        PORTA.OUTSET = PIN3_bm;
        _delay_ms(500);
        PORTA.OUTCLR = PIN3_bm;
        PORTA.OUTSET = PIN4_bm;
        _delay_ms(500);
        PORTA.OUTCLR = PIN4_bm;
        PORTA.OUTSET = PIN5_bm;
        _delay_ms(500);
        PORTA.OUTCLR = PIN5_bm;
        PORTA.OUTSET = PIN6_bm;
        _delay_ms(500);
        PORTA.OUTCLR = PIN6_bm;
        PORTA.OUTSET = PIN7_bm;
        _delay_ms(500);
        PORTA.OUTCLR = PIN7_bm;
        PORTB.OUTSET = PIN0_bm;
        _delay_ms(500);
        PORTB.OUTCLR = PIN0_bm;
        PORTB.OUTSET = PIN1_bm;
        _delay_ms(500);
        PORTB.OUTCLR = PIN1_bm;
        PORTB.OUTSET = PIN2_bm;
        _delay_ms(500);
        PORTB.OUTCLR = PIN2_bm;
        PORTB.OUTSET = PIN3_bm;
        _delay_ms(500);
        PORTB.OUTCLR = PIN3_bm;
        PORTB.OUTSET = PIN4_bm;
        _delay_ms(500);
        PORTB.OUTCLR = PIN4_bm;
        PORTB.OUTSET = PIN5_bm;
        _delay_ms(500);
        
        
    }
}
