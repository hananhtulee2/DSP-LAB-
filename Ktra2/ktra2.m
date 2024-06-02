function ktra2
clc;clear all;close all;
%2hethongghepnoitiep
N = 20 ; %Mau 
num11 = [0.5108 1.0215 0.5108];
den11 = [1 0.5654 0.4776];
num12 = [0.3730 0.7460 0.3730] ; 
den12 = [1 0.4129 0.0790] ; 

num1 = conv(num11,num12) ; 
den1 = conv(den11,den12) ;
%%%%%%%%%%%%%%%%%%%%%%a
%cach1dunghamfilter 
delta = [1,zeros(1,19)];
h1 = filter(num1,den1,delta);
%cach2dunghamimpz 
h2 = impz(num1,den1,20) ; 
figure(1); 
subplot(211);
stem(0:19,h1);
hold on;
plot(0:19,h1,'r--');
grid on;
xlabel('Time n');
ylabel('Amplitude');
title('IR using the command filter for the 1st sys');
subplot(212);
stem(0:19,h2);
hold on;
plot(0:19,h2,'r--');
grid on;
xlabel('Time n');
ylabel('Amplitude');
title('IR using the command impz for the 1st sys');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%b
% Using the command STEPZ
s11=stepz(num1,den1,20); % sys1
% Using the command FITLER
step=ones(1,20);
s12=filter(num1,den1,step); % sys1
figure(2); 
subplot(211) ;
stem(0:19,s11);
hold on ; 
plot(0:19,s11,'r--') ;
grid on;
xlabel('Time n');
ylabel('Amplitude');
title('SR using the command stepz for the 1st sys');
subplot(212); 
stem(0:19,s12);
hold on ; 
plot(0:19,s12,'r--') ;
grid on;
xlabel('Time n');
ylabel('Amplitude');
title('SR using the command filter for the 1st sys');
%%%%%%%%%%%%%%%%%%%%%%%c 
w = -pi:2*pi/255:pi ; 
h3 = freqz(num1,den1,w) ; 
figure(3);
subplot(211) ; 
plot(w/pi,abs(h3));grid ; 
title('Magnitude Spectrum of the sys');
subplot(212);
plot(w/pi,angle(h3)); grid ; 
title('Phase Spectrum of the sys') ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%d
figure(4) ; 
zplane(num1,den1);
title('The pole-zero pattern of the sys');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%e 
%Tinhtuyentinh 
a = 2 ; b = -3 ; 
x1 = cos(2*pi*0.1*N);
x2 = cos(2*pi*0.4*N);
x = a*x1 + b*x2;
y1 = filter(num1,den1,x1) ; 
y2 = filter(num1,den1,x2) ; 
y = filter(num1,den1,x) ; 
yt = a*y1 +b*y2 ;
d = y - yt ;
figure(5) ; 
subplot(3,1,1)
stem(N,y);
ylabel('Amplitude');
title('Output Due to Weighted Input: a \cdot+ x_{1}+[n]+ b \cdot+ x_{2}+[n]');
subplot(3,1,2)
stem(N,yt);
ylabel('Amplitude');
title('Weighted Output: a \cdot+ y_{1}+[n] + b \cdot+y_{2}+[n]');
subplot(3,1,3)
stem(N,d);
xlabel('Time index n'); ylabel('Amplitude');
axis([0 20 0 5 ]) ;
title('Difference Signal');
%tinhbatbien 
n = 0:40 ;
D = 10 ;
x3 = a*cos(2*pi*0.1*n) + b*cos(2*pi*0.4*n);
xd = [zeros(1,D) x3] ;
y3 = filter(num1,den1,x3) ; 
yd1 = filter(num1,den1,xd) ;
d1 = y3 - yd1(1+D:41+D) ;
figure(6) ; 
subplot(311) ; 
stem(n,y3) ;
ylabel('Amplitude');
title('Output y3[n]');grid;
subplot(312) ;
stem(n,yd1(1:41)) ; 
ylabel('Amplitude');
title(['Output Due to Delayed Input x[n ’, num2str(D),’]']);grid;
subplot(3,1,3)
stem(n,d1);
xlabel('Time index n'); ylabel('Amplitude');
title('Difference Signal');grid;

