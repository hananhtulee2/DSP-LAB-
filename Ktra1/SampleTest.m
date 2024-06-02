function SampleTest
% Prob.1
clc;
close all;
clear;
% n=-30:30;
% x1=3*exp(-abs(n)/14);
% x2=cos(200*pi*n);
% x31=[zeros(1,2),ones(1,8),zeros(1,9),ones(1,6),zeros(1,5)];
% x3=[fliplr(x31),0,x31];
% x=x1.*x2.*x3;
% stem(n,x);
% grid on;
% xlabel('Time n');
% ylabel('Amplitude');
% title('Problem 1');
% Prob.2
% numerator and denominator coeff of the 1st sys
num11=[0.3,-0.2,0.4];
den11=[1,0.9,0.8];
num12=[0.2,-0.5,0.3];
den12=[1,0.7,0.85];
num1=conv(num11,num12);
den1=conv(den11,den12);
% numerator and denominator coeff of the 2nd sys
num2=[0.45,0.5,0.45];
den2=[1,-0.53,0.46];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% a
% Using the command IMPZ
h11=impz(num1,den1,20); % sys1
h21=impz(num2,den2,20); % sys2
% Using the command FITLER
delta=[1,zeros(1,19)];
h12=filter(num1,den1,delta); % sys1
h22=filter(num2,den2,delta); % sys2
% Sketch the impulse resp of the 1st sys in the Fig.1
figure(1);
subplot(211);
stem(0:19,h11);
hold on;
plot(0:19,h11,'r--');
grid on;
xlabel('Time n');
ylabel('Amplitude');
title('IR using the command impz for the 1st sys');
subplot(212);
stem(0:19,h12);
hold on;
plot(0:19,h12,'r--');
grid on;
xlabel('Time n');
ylabel('Amplitude');
title('IR using the command filter for the 1st sys');
% Sketch the impulse resp of the 2nd sys in the Fig.2
figure(2);
subplot(211);
stem(0:19,h21);
hold on;
plot(0:19,h21,'r--');
grid on;
xlabel('Time n');
ylabel('Amplitude');
title('IR using the command impz for the 2nd sys');
subplot(212);
stem(0:19,h22);
hold on;
plot(0:19,h22,'r--');
grid on;
xlabel('Time n');
ylabel('Amplitude');
title('IR using the command filter for the 2nd sys');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% b
% Using the command STEPZ
s11=stepz(num1,den1,51); % sys1
s21=stepz(num2,den2,51); % sys2
% Using the command FITLER
step=ones(1,51);
s12=filter(num1,den1,step); % sys1
s22=filter(num2,den2,step); % sys2
% Sketch the step resp of the 1st sys in the Fig.1
figure(3);
subplot(411);
stem(0:50,s11);
hold on;
plot(0:50,s11,'r--');
grid on;
xlabel('Time n');
ylabel('Amplitude');
title('SR using the command stepz for the 1st sys');
subplot(412);
stem(0:50,s12);
hold on;
plot(0:50,s12,'r--');
grid on;
xlabel('Time n');
ylabel('Amplitude');
title('SR using the command filter for the 1st sys');
% Sketch the impulse resp of the 2nd sys in the Fig.2
subplot(413);
stem(0:50,s21);
hold on;
plot(0:50,s21,'r--');
grid on;
xlabel('Time n');
ylabel('Amplitude');
title('SR using the command stepz for the 2nd sys');
subplot(414);
stem(0:50,s22);
hold on;
plot(0:50,s22,'r--');
grid on;
xlabel('Time n');
ylabel('Amplitude');
title('SR using the command filter for the 2nd sys');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% c
n=0:60;
amp=2;
b=0; % omega min of 0
a=pi/120;
arg=a*n.*n+b*n;
x=amp*cos(arg); % swept-freq sinusoidal signal
y1=filter(num1,den1,x); % the output of the 1st sys
y2=filter(num2,den2,x); % the output of the 2nd sys
% num and den of the cascade sys
num=conv(num1,num2);
den=conv(den1,den2);
y=filter(num,den,x); % the output of the cascade sys
figure(4);
subplot(411);
stem(n,x);
hold on;
plot(n,x,'r--');
grid on;
xlabel('Time n');
ylabel('Amplitude');
title('The input of the swept-freq sin. signal');
subplot(412);
stem(n,y1);
hold on;
plot(n,y1,'r--');
grid on;
xlabel('Time n');
ylabel('Amplitude');
title('The output of the 1st sys');
subplot(413);
stem(n,y2);
hold on;
plot(n,y2,'r--');
grid on;
xlabel('Time n');
ylabel('Amplitude');
title('The output of the 2nd sys');
subplot(414);
stem(n,y);
hold on;
plot(n,y,'r--');
grid on;
xlabel('Time n');
ylabel('Amplitude');
title('The output of the cascade sys');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% d
% The answer of the d and c is the same
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% e
figure(5);
subplot(311);
zplane(num1,den1);
title('The pole-zero pattern of the 1st sys');
subplot(312);
zplane(num2,den2);
title('The pole-zero pattern of the 2nd sys');
subplot(313);
zplane(num,den);
title('The pole-zero pattern of the cascade sys');