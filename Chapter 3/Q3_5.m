% Program P3_1
% Evaluation of the DTFT 
clf;
% Compute the frequency samples of the DTFT
w = -4*pi:8*pi/511:4*pi;    % l?y 512 m?u t?n s?
num = [2 1];                % t? s? - h? s? x
den = [1 -0.6];             % m?u s? - h? s? y
h = freqz(num, den, w);     % hàm tính DTFT
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
plot(w/pi,angle(h)*180/pi);        % v? ph? pha
grid
title('Phase Spectrum arg[H(e^{j\omega})]')
xlabel('\omega /\pi');
ylabel('Phase in degrees');

