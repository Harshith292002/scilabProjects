
clc;
clear;
close;
x = input("Enter the first sequence: ");
y = xcorr(x);
disp(y,"Auto Coorelation = ");
