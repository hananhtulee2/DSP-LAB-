function rot1911
% Given the sinusoidal signals including 4 frequencies
% of 2 kHz,4kHz,6kHz and 8 kHz is sampled at the rate of 40 kHz. 
% Plot the naturally sampled signal, the flat-top sampled
% signal, and the spectrum of the origin signal and
% the corresponding discrete time signal.
clc;clear;close all;
f1=2000;
f2=8000;
f3=4000;
f4=6000;
T1=1/f1;
fs=40000;
Ts=1/fs;
t=linspace(0,T1,200);
A=1;
B=2;
C=3; 
D=4;
arg1=0;arg2=0;arg3=0;arg4=0;
xt=A*cos(2*pi*f1*t+arg1)+...
B*cos(2*pi*f2*t+arg2)+...
C*cos(2*pi*f3*t+arg3)+...
D*cos(2*pi*f4*t+arg4);
ts=0:Ts:T1;
xs=A*cos(2*pi*f1*ts+arg1)+...
B*cos(2*pi*f2*ts+arg2)+...
C*cos(2*pi*f3*ts+arg3)+...
D*cos(2*pi*f4*ts+arg4);
figure('Name','Analysis of the signal in the time domain','NumberTitle','off');
subplot(411);
plot(t,xt);
axis([0 T1 min(xt) max(xt)]);
grid on;
xlabel('time');
ylabel('amplitude');
title('The continuous time signal');
subplot(412);
stem(ts,xs);
hold on;
plot(t,xt,'r--');
axis([0 T1 min(xt) max(xt)]);
grid on;
xlabel('time');
ylabel('amplitude');
title('The naturally sampled signal');
subplot(413);
stairs(ts,xs);
hold on;
plot(t,xt,'r--');
axis([0 T1 min(xt) max(xt)]);
grid on;
xlabel('time');
ylabel('amplitude');
title('The flat-top sampled signal');
% Plot the spectrum of the continous time signal
N=5000;
k=(0:N-1)*Ts;
xk=A*cos(2*pi*f1*k+arg1)+...
B*cos(2*pi*f2*k+arg2)+...
C*cos(2*pi*f3*k+arg3)+...
D*cos(2*pi*f4*k+arg4);
xf=fft(xk);
subplot(414);
plot(fs/N*(0:N-1),abs(xf));
grid on;
xlabel('frequency');
ylabel('amplitude');
title('The spectrum of the continuous time signal');