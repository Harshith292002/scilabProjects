
clc;
clear;
close;
x = input("Enter First Sequence: ");
h = input("Enter Second Sequence: ");
y = xcorr(x,h);
disp(y,"Cross Coorelation = []");


