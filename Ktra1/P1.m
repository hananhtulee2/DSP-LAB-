function P1
clc;clear all;close all;
f = 400;
T = 1/f ; 
fs = 10000 ; %tansolaymau
Ts = 1/fs ; %chukylaymau
phase = 0 ; %phabandau
t=linspace(0,5*T,200);
xt = exp(-1000*t).*cos(2*pi*f*t + phase) ;
ts=0:Ts:5*T; % sampling time
xts = exp(-1000*ts).*cos(2*pi*f*ts + phase);
%vetinhieulientuc
subplot(311);
plot(t,xt);
axis([0 5/400 min(xt) max(xt)]); grid ; 
xlabel('Time t');
ylabel('Amp x(t)');
title('Vetinhieulientuc');
%Laymautunhien
subplot(312) ;
stem(ts,xts);
axis([0 5/400 min(xts) max(xts)]) ; grid ; 
xlabel('Time t');
ylabel('Amp x(t)');
title('Laymautunhien');
%Laymauvagiu
subplot(313);
stairs(ts,xts);
axis([0 5/400 min(xts) max(xts)]) ;  grid ;
xlabel('Time t');
ylabel('Amp x(t)');
title('Laymauvagiu');
end 