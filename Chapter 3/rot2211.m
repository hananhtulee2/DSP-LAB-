function rot2211
% Simulate the signal for phase distortion due to different
% delays of sinusoidal components in the CT signal.
clc;clear;close all;
f1=100;
f2=150;
f3=200;
T=1/gcd(f1,gcd(f2,f3));
t=linspace(0,3*T,200);
A1=1;
arg1=0;
x1=A1*cos(2*pi*f1*t+arg1);
A2=1;
arg2=0;
x2=A2*cos(2*pi*f2*t+arg2);
A3=1;
arg3=0;
x3=A3*cos(2*pi*f3*t+arg3);
xt=x1+x2+x3;
figure;
subplot(211);
plot(t,xt);
axis([0 max(t) min(xt) max(xt)]);
grid;
% the sinusoidal components with the different delays
A1=1;
tau1=0.1;% delay time of x1
arg1d=2*pi*f1*tau1;
x1d=A1*cos(2*pi*f1*t+arg1-arg1d);
A2=1;
tau2=0.01;% delay time of x2
arg2d=2*pi*f2*tau2;
x2d=A2*cos(2*pi*f2*t+arg2-arg2d);
A3=1;
tau3=0.001;% delay time of x3
arg3d=2*pi*f3*tau3;
x3d=A3*cos(2*pi*f3*t+arg3-arg3d);
xtd=x1d+x2d+x3d;
subplot(212);
plot(t,xtd);
axis([0 max(t) min(xtd) max(xtd)]);
grid;