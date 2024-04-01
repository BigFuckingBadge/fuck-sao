#include <atmel_start.h>

/**
 * Initializes MCU, drivers and middleware in the project
 **/
void atmel_start_init(void)
{
    PORTC.DIRSET = PIN0_bm;
    
	system_init();

	touch_init();
}
