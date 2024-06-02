function rot0212
% Circular conv via linear conv
clc; clear;
N=10;% number of points
N1=6;% less than N
N2=4;% less than N
x1=rand(1,N1);
x2=rand(1,N2);
v=conv(x1,x2);
v1=[zeros(1,N) v zeros(1,N)];% v(n)
v2=[v zeros(1,N) zeros(1,N)];% v(n+N)
v3=[zeros(1,N) zeros(1,N) v];% v(n-N)
v4=v1+v2+v3;
y=v4(N+1:2*N);
disp(y);
y1=cconv(x1,x2,N);
disp(y1);
figure(1) ; 
subplot(211) ; 
stem(y) ; 
grid ; 
subplot(212);
stem(y1) ; 
grid ; 