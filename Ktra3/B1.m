function B1
clc;clear all;close all;
n1 = -10 ; 
n2 = 20 ; 
n = n1:n2;
x = cos((pi/12)*n) ;
function [x,n] = stepseq(n0,n1,n2)
% Generates x(n) = u(n-n0); n1 <= n <= n2
% ------------------------------------------
% [x,n] = stepseq(n0,n1,n2)
%
n = [n1:n2]; x = [(n-n0) >= 0];
end
[x1,n] = stepseq(0,n1,n2);
[x2,n] = stepseq(1,n1,n2);
y = exp(n.^4).*x1.*x - exp(n.^4).*x2.*x ;      
stem(n,y);
end