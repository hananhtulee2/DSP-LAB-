function rot2511
% Checking that the DFT of the even part of x(n) is the
% even part of the DFT of x(n)
clc;clear;close all;
xn=rand(1,256); % Creating xn
xnf=[xn(1),xn(end:-1:2)]; % folding of xn
xne=0.5*(xn+xnf); % the even part of xn
Xnef=fft(xne,256);% the DFT of the even part of xn
Xnf=fft(xn,256);% the DFT of xn
Xnff=[Xnf(1),Xnf(end:-1:2)]; % folding of the DFT of xn
Xnfe=0.5*(Xnf+Xnff);
figure(1);
subplot(211);
plot(abs(Xnef));axis([0,length(Xnef),min(abs(Xnef)),max(abs(Xnef))]);
grid;
subplot(212);
plot(abs(Xnfe));axis([0 length(Xnfe) min(abs(Xnfe)) max(abs(Xnfe))]);
grid;