function bai212 
%chung minh tich chap vong duoc tinh tu tich chap tuyen tinh 
clc;clear;close all;
xn =[0 2 4 6 8 10 12 14] ; 
yn =[1 2 3 4 5 6 7 8 ] ; 
h1 = conv(xn,yn) ; 
h2 = cconv(xn,yn,8); 
h11 = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 h1]; %h1(n-8) 
h12 = [h1 0 0 0 0 0 0 0 0 0 0 0 0 0 0];%h1(n+8) 
h13 = [0 0 0 0 0 0 0 h1 0 0 0 0 0 0 0 ]; %h1(n)
h3 = h13 + h11 + h12 ; 
h4 = h3(9:16) ; 
%z = h2 - h3 ;
figure(1) ; 
subplot(211); 
stem(h2) ; 
grid ; 
subplot(212) ;
stem(h4) ;
grid ; 
%subplot(313) ;
%plot(z) ; 
%grid ;


