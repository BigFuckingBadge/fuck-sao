
/*
 * File:   main.c
 * Author: Hexum064
 */

#define F_CPU 20000000U

#include <atmel_start.h>
#include <util/delay.h>

//All the pins that are outputs for LEDs
#define PORTA_PINS (PIN1_bm | PIN2_bm | PIN3_bm | PIN4_bm | PIN5_bm | PIN6_bm | PIN7_bm)
#define PORTB_PINS ( PIN1_bm | PIN2_bm | PIN3_bm | PIN4_bm | PIN5_bm)
#define PORTC_PINS ( PIN0_bm )

//BS debug pins that will never be used
#define DEBUG_PIN_IN PIN1_bm
#define DEBUG_PIN_OUT (PIN2_bm | PIN3_bm)

uint8_t idx = 0;
uint16_t counter = 0;
uint8_t button_activated = 0;

//Set up the pins for input and output
void init_io() {
    PORTA.DIRSET = PORTA_PINS;
    PORTB.DIRSET = PORTB_PINS;
    PORTC.DIRSET = PORTC_PINS;
    PORTC.DIRCLR = DEBUG_PIN_IN;
        
    PORTC.DIRSET = DEBUG_PIN_OUT;
}

//Lazy switch statement to turn on the selected LED
void switch_led(uint8_t led_index) {
    
    //Turn them all off first
    PORTA.OUTCLR = PORTA_PINS;
    PORTB.OUTCLR = PORTB_PINS;    
    PORTC.OUTCLR = PORTC_PINS;
    
    switch(led_index) {
        case 1:
            PORTA.OUTSET = PIN4_bm;
            break;
        case 2:
            PORTA.OUTSET = PIN3_bm;
            break;
        case 3:
            PORTA.OUTSET = PIN2_bm;
            break;
        case 4:
            PORTB.OUTSET = PIN3_bm;
            break;
        case 5:
            PORTB.OUTSET = PIN4_bm;
            break;
        case 6:
            PORTB.OUTSET = PIN5_bm;
            break;
        case 7:
            PORTA.OUTSET = PIN7_bm;
            break;
        case 8:
            PORTA.OUTSET = PIN6_bm;
            break;
        case 9:
            PORTC.OUTSET = PIN0_bm;
            break;
        case 10:
            PORTB.OUTSET = PIN1_bm;
            break;
        case 11:
            PORTB.OUTSET = PIN2_bm;
            break;
        case 12:
            PORTA.OUTSET = PIN1_bm;
            break;
        case 0:
        default:
            PORTA.OUTSET = PIN5_bm;
            break;
            
         
    }
}

int main(void)
{
    uint8_t key_status;
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();
    init_io();
    //Turn on the first led
    idx = 0;
    switch_led(idx);
    
    PORTC.DIRSET = PIN2_bm;
    
	/* Replace with your application code */
	while (1) 
    {
        key_status = get_sensor_state(0) & KEY_TOUCHED_MASK;
        
        
        if (0u != key_status) {
            PORTC.OUTSET = PIN2_bm;
            // LED_ON
        } else {
            PORTC.OUTCLR = PIN2_bm;
            // LED_OFF
        }
        
        //Gotta slow down this loop in the laziest way possible
        _delay_ms(1);
        
        //This means the button is not pressed
        if (!key_status) {
            
            //Pin was debounced so update the LED
            if (button_activated) {
                idx++;
                switch_led(idx);
                if (idx > 12) idx = 0;               
            }
                                 
            button_activated = 0;
            counter = 0;
        }
        else {
            
            if (counter > 1000) { //Long hold                
                counter--; //Just keep counter from actually counting now
                _delay_ms(10);
                idx++;
                switch_led(idx);
                if (idx > 12) idx = 0;
            }
            else if (counter > 50 && !button_activated) { //Regular hold
                button_activated = 1;
            } 

            counter++;
            
        }
	}
}
