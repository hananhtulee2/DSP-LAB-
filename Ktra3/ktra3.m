function ktra3
clc;clear all;close all;
a=[0 1 0 -1] ;
b = [a a a a] ;
c = [-a -a -a -a] ; 
n = 0:length(b)-1 ; 
plot(n,b,'r--') ; 
hold on; 
plot(n,c) ;
grid on ; 
axis([0,length(n)-1,-1.2,1.2]);
legend('c','b');