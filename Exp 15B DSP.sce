

clc ;
clf ;
clear all;
Ap =0.5;
fp =20; 
As =60;
S =42.1;
fs =S - fp ;
e = sqrt (10^(0.1* Ap ) -1) ;
e1 = sqrt (10^(0.1* As ) -1) ;
n =( log10 ( e1 / e ) ) /( log10 ( fs / fp ) ) ;
n = ceil ( n )
S1 =176.4;
fs1 = S1 - fp;
Ap =0.316;
e2 = sqrt (10^(0.1* Ap ) -1);
n1 =( log10 ( e1 / e2 ) ) /( log ( fs1 / fp ) ) ; //new o r d e r of but worth filter
n1 = ceil ( n1 )
f =0:100;
x = abs( sinc ( f * %pi / S ) ) ;
f1 =0:500;
x1 =abs( sinc ( f1 * %pi / S1 ) ) ;
a = gca () ;
subplot (211) ;
plot2d (f , x ) ;
xtitle ("spectra under normal sampling condition ” ,” f (kHZ ) ” ,” s i n c ( f / s1 )") ;
subplot (212);
plot2d ( f1,x1 );
xtitle ("spectra under over sampling condition ” ,” f (kHZ ) ” ,” s i n c ( f / s1 )");

