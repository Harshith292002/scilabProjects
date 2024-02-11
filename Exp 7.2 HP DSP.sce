
clc;
clear;
xdel(winsid());
fc = input("Enter Analog cutoff freq.in Hz= ")
fs = input("Enter Analog sampling freq.in Hz= ")
M = input("Enter order of filter = ")
w = (2*%pi)*(fc/fs);
disp(w,"Digital cut off frequency in radians,cycles/sampes");
wc=w/%pi;

disp(wc,"normalised digital cut off frequency in cycles/samples");
[wft,wfm,fr]=wfir("hp",M+1,[wc/2,0],"re",[0,0]);
disp(wft,"Impulse response of HPF FIR Filter:h[n]= ");

subplot(2,1,1);
plot(2*fr,wfm);
xlabel("Normalised Digital Frequency w---> ")
ylabel("Magnitude Response of FIR HPF")
xgrid(1)
subplot(2,1,2)
plot(fr*fs,wfm)
xlabel("Analog Frequency in Hz f-->")
ylabel("Magnitude|H(w) = ")
title("Magnitude Response of FIR HPF")
xgrid(1)
