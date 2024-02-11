// Application of correlation ,to detect binary sequence at receiver
// DSP MINI PROJECT (025,030,031)
clc;
clear;
xdel(winsid());
N=30;             // length of the signal
n=0:N-1;
pi=3.14;
x0=sin(n*%pi/8);       // for 0 transmission
x1=sin(n*%pi/4);       // for 1 transmission

scf();
subplot(2,1,1);
bar(n,x0,0.1,'red');
title('sin(n*%pi/8) to represent binary 0','color','black','fontsize',4);
xlabel("Index","font size",2,"color","blue");
ylabel("Amplitude","font size",2,"color","blue");

subplot(2,1,2);
bar(n,x1,0.1,'yellow');
title('sin(n*%pi/4) to represent binary 0','color','black','fontsize',4);
xlabel("Index","font size",2,"color","blue");
ylabel("Amplitude","font size",2,"color","blue");

w=rand(1,N);    //Noise signal
y0=x0+w;        //original signal + Noise signal
y1=x1+w;        //original signal + Noise signal

// If received signal is y0(n)
rx0y0=xcorr(x0,y0);      //corsscorrelation between x0(n) and y0(n)
rx1y0=xcorr(x1,y0);      //corsscorrelation between x1(n) and y0(n)

scf();
subplot(2,1,1);
bar(rx0y0,0.1,'red');
title('correlation between x0 and y0','color','red','fontsize',4);
xlabel("Index","font size",2,"color","blue");
ylabel("Amplitude","font size",2,"color","blue");

subplot(2,1,2);
bar(rx1y0,0.1,'green');
title('correlation between x1 and y0','color','red','fontsize',4);
xlabel("Index","font size",2,"color","blue");
ylabel("Amplitude","font size",2,"color","blue");

// If received signal is y1(n)
rx0y1=xcorr(x0,y1);      //corsscorrelation between x0(n) and y1(n)
rx1y1=xcorr(x1,y1);      //corsscorrelation between x1(n) and y1(n)

scf();
subplot(2,1,1);
bar(rx0y1,0.1,'red');
title('correlation between x0 and y1','color','green','fontsize',4);
xlabel("Index","font size",2,"color","blue");
ylabel("Amplitude","font size",2,"color","blue");

subplot(2,1,2);
bar(rx1y1,0.1,'green');
title('correlation between x1 and y1','color','green','fontsize',4);
xlabel("Index","font size",2,"color","blue");
ylabel("Amplitude","font size",2,"color","blue");
