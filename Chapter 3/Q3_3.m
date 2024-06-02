% Program P3_1/Q3_3
% Evaluation of the DTFT 
clf;
% Compute the frequency samples of the DTFT
w = 0:pi/511:pi;    	% l?y 512 m?u t?n s? ?? tính toán DTFT
num = [0.7 -0.5 0.3 1];		% t? s? - h? s? x
den = [1 0.3 -0.5 0.7];		% m?u s? - h? s? y
h = freqz(num, den, w);		% hàm tính DTFT
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
plot(w/pi,abs(h));          % v? ph? biên ?? 
grid
title('Magnitude Spectrum |H(e^{j\omega})|')
xlabel('\omega /\pi');
ylabel('Amplitude');
subplot(2,1,2)
plot(w/pi,angle(h));        % v? ph? pha
grid
title('Phase Spectrum arg[H(e^{j\omega})]')
xlabel('\omega /\pi');
ylabel('Phase in radians');
