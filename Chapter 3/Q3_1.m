% Program P3_1
% Evaluation of the DTFT 
clf; clc; clear all; close all;
% Compute the frequency samples of the DTFT
w = -4*pi:8*pi/511:4*pi;
num = [0.7 -0.5 0.3 1];
den = [1 0.3 -0.5 0.7];
h = freqz(num, den, w);
% Plot the DTFT
subplot(2,1,1)
plot(w/pi,real(h));grid
title('Real part of H(e^{j\omega})')
xlabel('\omega /\pi');
ylabel('Amplitude');
subplot(2,1,2)
plot(w/pi,imag(h));grid
title('Imaginary part of H(e^{j\omega})')
xlabel('\omega /\pi');
ylabel('Amplitude');
pause
subplot(2,1,1)
plot(w/pi,abs(h));grid
title('Magnitude Spectrum |H(e^{j\omega})|')
xlabel('\omega /\pi');
ylabel('Amplitude');
subplot(2,1,2)
plot(w/pi,angle(h));grid
title('Phase Spectrum arg[H(e^{j\omega})]')
xlabel('\omega /\pi');
ylabel('Phase in radians');
