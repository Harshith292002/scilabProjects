
clc;
clf;

clear all;

N = input("Enter the value of N");
x = input("Enter inout Sequence");
y = fft(x);
A = real(y);
B = imag(y);
mag = abs(y);
x1 = atan(imag(y),real(y));
phase = x1 *(180/ %pi);
disp("The resultant FFT Sequence is ");
disp(y);
disp("The magnitude response is ");
disp(mag);
disp("The phase response is ");
disp(phase);
z = ifft(y);
disp("The resultant IIFFT sequence is ");
disp(z);
subplot(3,2,1);
plot2d3(x);
title("Input Sequence");
subplot(3,2,2);
plot2d3(A);
title("FFT real Sequence ")
subplot(3,2,3);
plot2d3(B);
title("FFT Imaginary sequence ");
subplot(3,2,4);
plot2d3(mag);
title("Magnitude response");
subplot(3,2,5);
plot2d3(phase);
title("Phase response ");
subplot(3,2,6);
plot2d3(x);
title("IFFT sequence");
