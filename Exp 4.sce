
clc;
clf;
clear all;
x = input("Enter the first sequence: ");
h = input("Enter the second sequence: ");
disp(conv(x,h), "Convolution= ");
y = conv(x,h);

