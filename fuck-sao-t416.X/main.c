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

uint8_t index = 0;
uint16_t counter = 0;
uint8_t button_state = 0;

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
    PORTC.PIN0CTRL = PORT_PULLUPEN_bm;
    PORTC.DIRSET = DEBUG_PIN_OUT;
}

void switch_led(uint8_t index) {
    
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

uint8_t button_activated = 0;

void main(void) {
    
    init_clk();
    
    init_io();
    index = 0;
    switch_led(index);
    
    while(1) {
        _delay_ms(1);
        if (PORTC.IN & PIN0_bm) {
            
            if (button_activated) {
                index++;
                switch_led(index);
                if (index > 12) index = 0;               
            }
                                 
            button_activated = 0;
            counter = 0;
        }
        else {
            
            if (counter > 1000) { //Long hold                
                counter--; //Just keep counter from actually counting now
                _delay_ms(10);
                index++;
                switch_led(index);
                if (index > 12) index = 0;
            }
            else if (counter > 50 && !button_activated) {
                button_activated = 1;
            } 

            counter++;
            
        }        
    }
}
