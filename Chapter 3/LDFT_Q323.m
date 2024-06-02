function LDFT_Q323(x,L)
clc;close all;
% Question Q3.23
% L=input('Enter the number of points L of the DFT:');
N=length(x); % input('Enter the length N (N<=L) of the sequence:');
if L<N
    error('L must be equal or greater than N');
    % L=input('Enter the number of points L of the DFT:');
    % N=input('Enter the length N (N<=L) of the sequence:');
elseif L>N
xe=[x zeros(1,L-N)]; % zero-padding
y=fft(x,L);
figure(1);
subplot(211);
stem(abs(y));
xlabel('Frequency Index');
ylabel('Magnitude Spectrum');
subplot(212);
stem(angle(y)*180/pi);
xlabel('Frequency Index');
ylabel('Phase Spectrum');
xn=ifft(y,L);
figure(2);
subplot(211);
stem(x);
xlabel('Time Index');
ylabel('x(n)');
title('The original sequence');
subplot(212);
stem(xn);
xlabel('Time Index');
ylabel('xn(n)');
title('The inverse DFT sequence');
end