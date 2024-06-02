function ktra1
clc;clear all;close all;
n1 = -5 ; 
n2 = 5 ;
n = n1:n2 ; 
x1 = exp(n.^2023).*cos((2*pi/2023)*n) ;
%x2 = exp(n.^2023).*cos((2*pi/2023)*n) ;
[x3,n] = stepseq(0,n1,n2) ; 
[x4,n] = stepseq(1,n1,n2) ;
function [x,n] = stepseq(n0,n1,n2)
% Generates x(n) = u(n-n0); n1 <= n <= n2
% ------------------------------------------
% [x,n] = stepseq(n0,n1,n2)
n = [n1:n2]; x = [(n-n0) >= 0];
end
xn = x1.*x3-x1.*x4 ; 
figure(1) ; 
plot(n,xn) ; 
axis([-5 5 min(xn) max(xn)]);
grid ; 
end