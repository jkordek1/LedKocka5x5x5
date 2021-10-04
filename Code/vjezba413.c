/*
 Naslov: MIKRORA�UNALA - Programiranje mikrokontrolera porodice 
 Atmel u programskom okru�enju Atmel Studio 6
 Autori: Zoran Vrhovski, Marko Mileti�
 
 Vje�ba 4.1.3
 */ 

#include "AVR lib/AVR_lib.h"
#include <avr/io.h>
#include <util/delay.h>


void inicijalizacija(){
	
	DDRB |= (1 << PB7); // PORTB7 postavljen kao izlazni port
	PORTB |= (1 << PB7); // postavljanje PORT7 u logi�ku jedinicu

}

int main(void){
	
	
	inicijalizacija(); // inicijalizacija mikrokontrolera
	
	
	
	while (1) // beskona�na petlja u kojoj mikrokontroler ostaje dok god ima napajanja te dok nije u RESET-u
	{
	
	_delay_ms(1000); // funkcija ka�njenja koja kao argument prima vrijeme u ms
	
	TOGGLE_PORT(PORTB,PB7); // promijeni stanje PB7
	
	}
	
	return 0;
	
}