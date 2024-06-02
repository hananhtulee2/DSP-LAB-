function Q3_24
clc;
clear all;
close all;
N=16;% N points
g=rand(1,N);
h=rand(1,N);
x=g+j*h;
Gk=fft(g,N);
Hk=fft(h,N);
Xk=fft(x,N);
Xk_cir=[Xk(1),Xk(end:-1:2)];% Circular folding of Xk
Xk_cir_conj=conj(Xk_cir);% Conjugate of Xk_cir
Gk1=(1/2)*(Xk+Xk_cir_conj);
Hk1=(-j/2)*(Xk-Xk_cir_conj);
dg=Gk-Gk1;
dh=Hk-Hk1;
subplot(611);
stem(abs(Hk));
ylabel('Magnitude');
xlabel('Freq. Index k');
title('N-point DFT of h(n)');
subplot(612);
stem(abs(Hk1));
ylabel('Magnitude');
xlabel('Freq. Index k');
title('N-point DFT of h(n) is computed from Xk');
subplot(613);
stem(abs(dh));
ylabel('Magnitude Error');
xlabel('Freq. Index k');
title('Difference between N-point DFT of h(n) and N-point DFT of h(n) is computed from Xk');
subplot(614);
stem(abs(Gk));
ylabel('Magnitude');
xlabel('Freq. Index k');
title('N-point DFT of g(n)');
subplot(615);
stem(abs(Gk1));
ylabel('Magnitude');
xlabel('Freq. Index k');
title('N-point DFT of g(n) is computed from Xk');
subplot(616);
stem(abs(dg));
ylabel('Magnitude Error');
xlabel('Freq. Index k');
title('Difference between N-point DFT of g(n) and N-point DFT of g(n) is computed from Xk');
end