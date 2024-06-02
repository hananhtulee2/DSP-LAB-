function B2
clc;clear all;close all;
n1 = -10 ; 
n2 = 20 ; 
n = n1:n2;
a = 1/3 ; 
function [x,n] = stepseq(n0,n1,n2)
% Generates x(n) = u(n-n0); n1 <= n <= n2
% ------------------------------------------
% [x,n] = stepseq(n0,n1,n2)
%
n = [n1:n2]; x = [(n-n0) >= 0];
end
[x,n] = stepseq(0,n1,n2);
y = (n.^2).*(a.^n).*x ;     
stem(n,y);
end