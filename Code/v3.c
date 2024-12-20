#ifdef F_CPU
#undef F_CPU
#define F_CPU 16000000l
#endif

#include "AVR lib/AVR_lib.h"
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>#include <stdbool.h>
#include <stdio.h>
uint8_t trenutni_sloj = 1;
uint8_t trenutni_stupac = 6;
uint8_t slovo = 1;

uint8_t prazan_hod = 0;
bool smjer = true;
uint8_t MOD = 1;
uint8_t MOD2BROJAC = 1;
uint8_t cntr = 0;
uint8_t cntr2 = 0;
uint8_t var = 0;

#define DATA PA1
#define CLOCK PA3
#define LATCH PA2
#define CLEAR PA4

#define LAYER1 PD2
#define LAYER2 PD3
#define LAYER3 PD4
#define LAYER4 PD5
#define LAYER5 PD6

int T[5][5] = {
	{0, 0, 0, 0, 0},
	{1, 1, 0, 1, 1},
	{1, 1, 0, 1, 1},
	{1, 1, 0, 1, 1},
	{1, 1, 0, 1, 1}
};

int V[5][5] = {
	{0, 1, 1, 1, 0},
	{0, 1, 1, 1, 0},
	{1, 0, 1, 0, 1},
	{1, 0, 1, 0, 1},
	{1, 1, 0, 1, 1}
};

int Z[5][5] = {
	{0, 0, 0, 0, 0},
	{1, 0, 1, 1, 1},
	{1, 1, 0, 1, 1},
	{1, 1, 1, 0, 1},
	{0, 0, 0, 0, 0}
};

int K[5][5] = {
	{0, 1, 1, 1, 0},
	{1, 0, 1, 1, 0},
	{1, 1, 0, 0, 0},
	{1, 0, 1, 1, 0},
	{0, 1, 1, 1, 0}
};

int I[5][5] = {
	{1, 1, 0, 1, 1},
	{1, 1, 1, 1, 1},
	{1, 1, 0, 1, 1},
	{1, 1, 0, 1, 1},
	{1, 1, 0, 1, 1}
};

int R[5][5] = {
	{1, 1, 0, 0, 0},
	{1, 0, 1, 1, 0},
	{1, 1, 0, 0, 0},
	{1, 1, 0, 1, 0},
	{1, 0, 1, 1, 0}
};

int prazno[5][5] = {
	{1, 1, 1, 1, 1},
	{1, 1, 1, 1, 1},
	{1, 1, 1, 1, 1},
	{1, 1, 1, 1, 1},
	{1, 1, 1, 1, 1}
};

int A1[5][5] = {
	{1, 1, 1, 1, 1},
	{1, 1, 1, 1, 1},
	{1, 1, 0, 1, 1},
	{1, 1, 1, 1, 1},
	{1, 1, 1, 1, 1}
};

int A2[5][5] = {
	{1, 1, 1, 1, 1},
	{1, 0, 0, 0, 1},
	{1, 0, 1, 0, 1},
	{1, 0, 0, 0, 1},
	{1, 1, 1, 1, 1}
};

int A3[5][5] = {
	{0, 0, 0, 0, 0},
	{0, 1, 1, 1, 0},
	{0, 1, 1, 1, 0},
	{0, 1, 1, 1, 0},
	{0, 0, 0, 0, 0}
};

int M[125]= {0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1,
			 1, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1,
			 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1};

void all_off(){
	for(int j = 0; j < 25; j++){
		set_port(PORTA, DATA, 1);
		TOGGLE_PORT(PORTA, CLOCK); //1
		TOGGLE_PORT(PORTA, CLOCK); //0
	}

	TOGGLE_PORT(PORTA, LATCH); //1
	TOGGLE_PORT(PORTA, LATCH); //0
	
}

void all_on(){
	for(int j = 0; j < 25; j++){
		set_port(PORTA, DATA, 0);
		TOGGLE_PORT(PORTA, CLOCK); //1
		TOGGLE_PORT(PORTA, CLOCK); //0
	}
	TOGGLE_PORT(PORTA, LATCH); //1
	TOGGLE_PORT(PORTA, LATCH); //0
}

void sloj(int x){
	
	switch(x){
		
		case 1:
		set_port(PORTD, LAYER1, 1);
		set_port(PORTD, LAYER2, 0);
		set_port(PORTD, LAYER5, 0);
		break;
		
		case 2:
		set_port(PORTD, LAYER2, 1);
		set_port(PORTD, LAYER1, 0);
		set_port(PORTD, LAYER3, 0);
		break;
		
		case 3:
		set_port(PORTD, LAYER3, 1);
		set_port(PORTD, LAYER2, 0);
		set_port(PORTD, LAYER4, 0);
		break;
		
		case 4:
		set_port(PORTD, LAYER4, 1);
		set_port(PORTD, LAYER3, 0);
		set_port(PORTD, LAYER5, 0);
		break;
		
		case 5:
		set_port(PORTD, LAYER5, 1);
		set_port(PORTD, LAYER1, 0);
		set_port(PORTD, LAYER4, 0);
		break;
	}
}

ISR(TIMER0_OVF_vect){ // prekidna rutina za timer0
	TCNT0 = 53;
	prazan_hod++;
	if(prazan_hod == 12){
		var++;
		if (var == 5) var = 0;
		prazan_hod = 0;


		}
	}

ISR ( TIMER2_OVF_vect ) { // prekidna rutina za timer2
	TCNT2 = 200; // po? etna vrijednost registra
	sloj(cntr + 1);
	for(int i = 0; i < 25; i++){
		set_port(PORTA, DATA, M[i + 25 * cntr + var]);
		TOGGLE_PORT(PORTA, CLOCK); //1
		TOGGLE_PORT(PORTA, CLOCK); //0
	}
	TOGGLE_PORT(PORTA, LATCH); //1
	TOGGLE_PORT(PORTA, LATCH); //0
	cntr++;
	if (cntr == 5) cntr = 0;
}

void inicijalizacija(){
	
	TCCR0 |= (0 << WGM01 ) | (0 << WGM00 ) ; // normalan na?in rada
	TCCR0 |= (1 << CS02 ) | (0 << CS01 ) | (1 << CS00 ) ; // F_CPU / 1024
	TIMSK |= (1 << TOIE0 ) ; // omogu�i prekid TOV0	
	TCCR2 |= (0 << WGM20 ) | (0 << WGM21 ) ;
	TCCR2 |= (1 << CS22 ) | (1 << CS21 ) | (1 << CS20 ) ; // F_CPU / 1024
	TIMSK |= (1 << TOIE2 ) ; // omogu�i prekid TOV0
	//DATA, CLOCK i LATCH pinovi postavljeni kao izlazni
	DDRA |= (1 << DATA) | (1 << CLOCK) | (1 << LATCH);
	
	//pinovi slojeva postavljeni kao izlazni
	DDRD |= (1 << LAYER1) | (1 << LAYER2) | (1 << LAYER3) | (1 << LAYER4) | (1 << LAYER5);
	
	//DATA 0
	set_port(PORTA, DATA, 0);

	DDRA |= (1 << CLEAR);
	PORTA |= (1 << CLEAR);
	
	TCNT0 = 200;
	TCNT2 = 26;
	
	all_off();
	
	sei();
}

int main(void){
	
	inicijalizacija();
	
	while(1){
		
	}
	return 0;
}