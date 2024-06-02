function rot0212a
% Given the above graph...
clc;clear;close all;
rng(0);
c0=rand;
c1=rand(1,4);
c2=rand(1,4);
c3=rand(1,4);
num1=[c1(3),c1(4),0];
den1=[1,-c1(1),-c1(2)];
num2=[c2(3),c2(4),0];
den2=[1,-c2(1),-c2(2)];
num3=[c3(3),c3(4),0];
den3=[1,-c3(1),-c3(2)];
N=20;% Length of the impulse response
h=c0*ones(1,N)+impz(num1,den1,N)+impz(num2,den2,N)+impz(num3,den3,N);
disp(h);
stem(h);
xlabel('Time index n');
ylabel('Amplitude n');
title('The impulse response of the overall system');