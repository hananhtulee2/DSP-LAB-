%A continuous time sinusoidal signal has its amplitude of 10, frequency of 1000 Hz is sampled at 
%the sampling rate of 8000 Hz. Write the matlab program P2.m to sketch the following signals in the range 
%of 2 periods
%a. The continuous time signal.
%%c. The flat-top signal.

function B1
clc;clear all;close all;
f = 1000;
T = 1/f ; 
fs = 8000 ; %tansolaymau
Ts = 1/fs ; %chukylaymau
phase = 0 ; %phabandau
t=linspace(0,2*T,200);
xt = exp(-1000*t).*cos(2*pi*f*t + phase) ;
ts=0:Ts:2*T; % sampling time
xts = exp(-1000*ts).*cos(2*pi*f*ts + phase);
%vetinhieulientuc
subplot(311);
plot(t,xt);
axis([0 max(t) min(xt) max(xt)]); grid ; 
xlabel('Time t');
ylabel('Amp x(t)');
title('Vetinhieulientuc');
%Laymautunhien
subplot(312) ;
stem(ts,xts,'g');
axis([0 max(t) min(xts) max(xts)]) ; grid ; 
xlabel('Time t');
ylabel('Amp x(t)');
title('Laymautunhien');
%Laymauvagiu
subplot(313);
stairs(ts,xts,'r');
axis([0 max(t) min(xts) max(xts)]) ;  grid ;
xlabel('Time t');
ylabel('Amp x(t)');
title('Laymauvagiu');
end  