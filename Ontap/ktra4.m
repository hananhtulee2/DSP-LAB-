function ktra4
clc;clear all;close all;
num1 = [1 0 0 1] ; 
den1 = [1 1] ;
w = -pi:2*pi/255:pi ; 
h3 = freqz(num1,den1,w) ; 
figure(1);
subplot(211) ; 
plot(w/pi,abs(h3));grid ; 
title('Magnitude Spectrum of the sys');
subplot(212);
plot(w/pi,angle(h3)); grid ; 
title('Phase Spectrum of the sys') ;