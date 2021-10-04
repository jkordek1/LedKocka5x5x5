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
	
	if (MOD == 1){
	TCNT0 = 200; // pocetna vrijednost registra
	sloj(trenutni_sloj);
	
	for(int j = 0; j < (trenutni_stupac-1)*5; j++){
		set_port(PORTA, DATA, 1);
		TOGGLE_PORT(PORTA, CLOCK); //1
		TOGGLE_PORT(PORTA, CLOCK); //0
	}
	
	for(int i = 0; i < 5; i++){
		if(slovo == 1){
			set_port(PORTA, DATA, T[trenutni_sloj - 1][i]);
		}
		else if(slovo == 2){
			set_port(PORTA, DATA, V[trenutni_sloj - 1][i]);
		}
		else if(slovo == 3){
			set_port(PORTA, DATA, Z[trenutni_sloj - 1][i]);
		}
		else if(slovo == 4){
			set_port(PORTA, DATA, prazno[trenutni_sloj - 1][i]);
		}
		else if(slovo == 5){
			set_port(PORTA, DATA, K[trenutni_sloj - 1][i]);
		}
		else if(slovo == 6){
			set_port(PORTA, DATA, I[trenutni_sloj - 1][i]);
		}
		else if(slovo == 7){
			set_port(PORTA, DATA, R[trenutni_sloj - 1][i]);
		}
		else if(slovo == 8){
			set_port(PORTA, DATA, T[trenutni_sloj - 1][i]);
		}
		else if(slovo == 9){
			set_port(PORTA, DATA, prazno[trenutni_sloj - 1][i]);
		}
		TOGGLE_PORT(PORTA, CLOCK); //1
		TOGGLE_PORT(PORTA, CLOCK); //0
	}
	for(int j = 0; j < 25 - trenutni_stupac*5; j++){
		set_port(PORTA, DATA, 1);
		TOGGLE_PORT(PORTA, CLOCK); //1
		TOGGLE_PORT(PORTA, CLOCK); //0
	}
	
	TOGGLE_PORT(PORTA, LATCH); //1
	TOGGLE_PORT(PORTA, LATCH); //0
	trenutni_sloj++;

	if(trenutni_sloj == 6)	trenutni_sloj = 1;
		}
	}
	
void inicijalizacija(){
	
	TCCR0 |= (0 << WGM01 ) | (0 << WGM00 ) ; // normalan na?in rada
	TCCR0 |= (1 << CS02 ) | (0 << CS01 ) | (1 << CS00 ) ; // F_CPU / 1024
	TIMSK |= (1 << TOIE0 ) ; // omoguæi prekid TOV0	
	TCCR2 |= (0 << WGM20 ) | (0 << WGM21 ) ;
	TCCR2 |= (1 << CS22 ) | (1 << CS21 ) | (1 << CS20 ) ; // F_CPU / 1024
	TIMSK |= (1 << TOIE2 ) ; // omoguæi prekid TOV0
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

ISR ( TIMER2_OVF_vect ) { // prekidna rutina za timer2
	if(MOD == 1){
		TCNT2 = 26; // po? etna vrijednost registra
		prazan_hod ++;
		if ( prazan_hod == 6){
			trenutni_stupac--;
			if (trenutni_stupac == 0) {
				slovo++;
				if (slovo == 10) {
					slovo = 1;
					trenutni_sloj = 1;
					MOD = 2;
					all_on();
					set_port(PORTD, PD4, 0);
					prazan_hod = 0;
				}
				trenutni_stupac = 5;
			}
			prazan_hod = 0;
		}
	}
	else if (MOD == 2){
		TCNT2 = 53;
		prazan_hod ++;
		if ( prazan_hod == 12){
			sloj(trenutni_sloj);
			if (smjer) trenutni_sloj++;
			else trenutni_sloj--;
			if(trenutni_sloj == 5 || trenutni_sloj == 1){
				MOD2BROJAC++;
				smjer = !smjer;
				}
			if(MOD2BROJAC == 13) {
				MOD = 1;
				trenutni_sloj = 1;
				MOD2BROJAC = 1;
				smjer = true;
				}
		prazan_hod = 0;
		}
		
	}
}

int main(void){
	
	inicijalizacija();
	
	while(1){
	
	}
	return 0;
}