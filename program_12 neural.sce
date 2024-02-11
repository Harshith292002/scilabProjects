clc;
clear all;
x1=1
x2=0
w11=0.6;
w12=-0.3;
w21=-0.1;
w22=0.4;
w01=0.3;
w02=0.5;
w1=0.4;
w2=0.1
d=1
w0=-0.2;
n=0.5;

z1in=w01+(x1*w11)*(x2*w21);
z2in=w02+(x2*w22)*(x1*w12);
z1=1/(1+exp(-z1in))
z2=1/(1+exp(-z2in))

yin=w0+(z1*w1)+(z2*w2)
y=1/(1+exp(-yin))

del=y*(1-y)*(d-y)

delw0=n*del;
delw1=n*del*z1;
delw2=n*del*z2;

del11=z1*(1-z1)*del*w1;
del22=z2*(1-z2)*del*w2;

delw11=n*del11*x1;
delw12=n*del22*x1;
delw21=n*del11*x2;
delw22=n*del22*x2;
delw01=n*del11;
delw02=n*del22;

w0=w0+delw0;
w1=w1+delw1
w2=w2+delw2
w11=w11+delw11
w12=w12+delw12
w21=w21+delw21
w22=w22+delw22
w01=w01+delw01
w02=w02+delw02

z1in=w01+(x1*w11)*(x2*w21);
z2in=w02+(x2*w22)*(x1*w12);
z1=1/(1+exp(-z1in))
z2=1/(1+exp(-z2in))
yin=w0+(z1*w1)+(z2*w2)
y=1/(1+exp(-yin))
err=d-y;
disp("error is",err);
disp("w11 is",w11);
disp("w12 is",w12);
disp("w22 is",w22);
disp("w21 is",w21);
disp("w01 is",w01);
disp("w02 is",w02);
disp("w0 is",w0);
disp("w2 is",w2);
disp("w1 is",w1);
