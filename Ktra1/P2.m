function P2
clc;clear all;close all;
  function [x,n] = ramp(n0,n1,n2)
        n = n1:n2 ; 
        x = n+n0;    
  end
  function [x,n] = stepseq(n0,n1,n2)
    n = [n1:n2]; x = [(n-n0) >= 0];
  end
  n1 = -6 ; 
  n2 = 17 ; 
  n = n1:n2 ; 
  x1 = ramp(6,n1,n2);
  x2 = ramp(0,n1,n2);
  x2(x2 < 0) = 0;
  %x3 = 6*stepseq(0,n1,n2);
  
  x = x1-x2 ;

  n_cycle = -6:0; % T?o m?ng n_cycle t? -6 ??n 0
  x_cycle = x(n_cycle - n1 + 1); % S? d?ng m?ng n_cycle ?? truy c?p x
  E_cycle = sum(x_cycle.^2);
  P = sum(x_cycle.^2)/6 ; 
  fprintf('Nang luong trong 1 chu ky: %f\n', E_cycle);
  fprintf('Cong suat: %f\n', P);

  stem(n,x);
end
