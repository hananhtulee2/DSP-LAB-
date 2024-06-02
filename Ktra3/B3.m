function B3
clc;clear all;close all;
n1 = -10 ; 
n2 = 20 ; 
n = n1:n2;
a = 1/5 ; 
b = 1/3 ; 
c = 1/2 ;
function [x,n] = stepseq(n0,n1,n2)
% Generates x(n) = u(n-n0); n1 <= n <= n2
% ------------------------------------------
% [x,n] = stepseq(n0,n1,n2)
%
n = [n1:n2]; x = [(n-n0) >= 0];
end
[x,n] = stepseq(0,n1,n2);
x1 = (a.^n).*x ; 
x2 = (b.^n).*x ;
x3 = (c.^n).*[ones(1,abs(n1)) zeros(1,abs(n2)+1)];

y = x1+x2+x3 ;      
stem(n,y);
end