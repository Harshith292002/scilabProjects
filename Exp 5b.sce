
clc;
close;
clear;
fs=100;
t=0:1/fs:10-1/fs;
x = ((1.3)*sin(2*%pi*15*t)+(1.7)*sin(2*%pi*40*(t-2)))
y = fft(x)
n = length(x);
f = (0:n-1)*(fs/n);
power = abs(y).^2/n;
plot(f,power)
xlabel("Frequency")
ylabel("Power")
