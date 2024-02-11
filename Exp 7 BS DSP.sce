
clc;
clear;
xdel(winsid());
fc1=input("Enter Analog lower cut off freq.in Hz= ")
fc2=input("Enter Anaog higher cut off freq.in Hz= ")
fs= input("Enter Analog sampling freq.in Hz=")
M=input("Enter order of filter = ")
w1=(2*%pi)*(fc1/fs);
w2=(2*%pi)*(fc2/fs);
disp(w1,"Digital lower cut off frequency in radians cycles/samples");
disp(w2,"Digital higher cut off frequency in radians in cycles/samples");
wc1=w1/%pi;
wc2=w2/%pi;
disp(wc1,"Normalized digital lower cut off frequency in cycles/samples");
disp(wc2,"Normalised digital higher cut off frequency in cycles/samples");
[wft,wfm,fr]=wfir("sb", M+1,[wc1/2,wc2/2],"re",[0,0]);
disp(wft,"Impluse Response of BPF FIR Filter : h[n]= ");

subplot(2,1,1)
plot(2*fr,wfm)
xlabel("Normalised Digital Frequency w-->")
ylabel("Magnitude |H(w)| = ")
title("Magnitude Response of FIR BPF")
xgrid(1)
subplot(2,1,2)
plot(fr*fs,wfm)
xlabel("Analog Frequnecy in Hz f --> ")
ylabel("Magnitude |H(w)|= ")
title("Magnitude Response of FIR BPF")
xgrid(1)
