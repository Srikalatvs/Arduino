#include<Aurdino.h>
int a,b,c,d;
int p =0,q=1,r=0,s=1;
void disp_fsm(a,b,c,d){
digitalWrite(2,a);
digitalWrite(3,b);
digitalWrite(4,c);
digitalWrite(5,d);
}
void setup(){
pinMode(2,OUTPUT);
pinMode(3,OUTPUT);
pinMode(4,OUTPUT);
pinMode(5,OUTPUT);
pinMode(6,INPUT);
pinMode(7,INPUT);
pinMode(8,INPUT);
pinMode(9,INPUT);
}
void loop(){
disp_fsm(a,b,c,d);
}
