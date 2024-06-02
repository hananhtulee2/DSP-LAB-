function P1
clc;clear all;close all;
fs = 10000 ; %tansolaymau
Ts = 1/fs ; %chukylaymau
phase = 0 ; %phabandau
t=linspace(0,Ts,200);
xt = 2*cos(2*pi*fs*t+phase)+ 3*sin(2*pi*fs*t+phase);
%vetinhieulientuc
subplot(311);
plot(t,xt);
xlabel('Time t');
ylabel('Amp x(t)');
title('Vetinhieulientuc');
%Laymautunhien
subplot(312) ;
stem(t,xt);
xlabel('Time t');
ylabel('Amp x(t)');
title('Laymautunhien');
%Laymauvagiu
subplot(313);
stairs(t,xt);
xlabel('Time t');
ylabel('Amp x(t)');
title('Laymauvagiu');
end 