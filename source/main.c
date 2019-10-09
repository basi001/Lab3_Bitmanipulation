/*	Author: basi001
 *  Partner(s) Name: Christopher Hyunh
 *	Lab Section:
 *	Assignment: Lab #  Exercise #
 *	Exercise Description: [optional - include for your own benefit]
 *
 *	I acknowledge all content contained herein, excluding template or example
 *	code, is my own original work.
 */
#include <avr/io.h>
#ifdef _SIMULATE_
#include "simAVRHeader.h"
#endif


int main(void) {
    /* Insert DDR and PORT initializations */
     DDRA = 0x00; PORTA = 0xFF;
     DDRB = 0x00; PORTB = 0xFF;
     DDRC = 0xFF; PORTC = 0x00;

     unsigned char tmpA = 0x00;
     unsigned char tmpB = 0x00;
     unsigned char check= 0x00;
     unsigned char result = 0x00;
    /* Insert your solution below */
    while (1) {
        tmpA = PINA;
        tmpB = PINB;
	result = 0x00;
	while(tmpA){
		
		check = tmpA&0x01;
			if(check == 0x01){
				result = result + 1;
		}
	tmpA = (tmpA >>1);
	while (tmpB){
		
		check = tmpB&0x01;
			if(check == 0x01){
				result = result + 1;
		}
	tmpB = (tmpB >>1);
	}

	PORTC = result;
	
	}

    }
   return 1;
}
 
                                                                                                                                                          
