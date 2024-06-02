function Q3_25
clc;
clear all;
close all;
N=16; % N-point DFT
v=rand(1,2*N);
g=v(1:2:length(v)); % g is selected from the even positions of v
h=v(2:2:length(v)); % h is selected from the odd positions of v
Gk=fft(g,N);
Hk=fft(h,N);
Vk=fft(v,2*N);
W=exp(-j*2*pi/(2*N)); % W2N
k=0:2*N-1;
Vk1=[Gk,Gk]+(W.^k).*[Hk Hk];
dv=Vk-Vk1;
subplot(311);
stem(abs(Vk));
ylabel('Mag.');
xlabel('Freq. Index k');
title('2N-point DFT of v');
subplot(312);
stem(abs(Vk1));
ylabel('Mag.');
xlabel('Freq. Index k');
title('Vk is computed alternatively from Gk and Hk');
subplot(313);
stem(abs(dv));
ylabel('Mag. Error');
xlabel('Freq. Index k');
title('Comparison of Vk and Vk1');
end