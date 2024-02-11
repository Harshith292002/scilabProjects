clc ;
clear ;
close ;
fp= input('Enter the pass band edge (Hz ) = ');
fs= input('Enter the stop band edge (Hz ) = ');
kp= input('Enter the pass band attenuation (dB) = ');
ks= input('Enter the stop band attenuation (dB) = ');
Fs= input('Enter the sampling rate samples / s e c = ');
d1 = 10^(kp/20) ;
d2 = 10^(ks/20) ;
d = sqrt((1/(d2^2))-1);
E = sqrt((1/(d1^2))-1);
wp =2*%pi*fp*1/Fs;
ws =2*%pi*fs*1/Fs;
op =2*Fs*tan(wp/2);
os =2*Fs*tan(ws/2);
N =acosh(d/E)/acosh(os/op);
oc = op /(( E ^2) ^(1/(2* N)));
N = ceil (N);
disp (N,'IIR Filter order N =' );
disp (oc ,'Cut off Frequency in rad/seconds OC = ' )
[pols ,gn] = zpch1 (N,E,op);
HS = poly (gn,'s','coeff' )/real(poly(pols,'s'));
z = poly(0,'z')
Hz = horner (HS,(2*Fs*(z -1)/(z +1)))
num = coeff(Hz(2))
den = coeff(Hz(3))
Hz(2)= Hz(2)./den(3) ;
Hz(3) = Hz(3)./den(3) ;
disp (Hz ,'Transfer function of Digitl a IIR Chebyshev LPF H(Z)=' )
[Hw,w] =frmag(Hz ,256) ;
figure(1)
plot(2*w*%pi ,20*log10(abs(Hw)));
xlabel('Digital Frequency W>' )
ylabel('Magnitude in dB 20log jH(w) j= ' )
title('Magnitude Response of IIR LPF ' )
xgrid(1)
