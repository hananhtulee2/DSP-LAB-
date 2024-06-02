% Program P3_9
% Circular Convolution Property of DFT
g1 = [1 2 3 4 5 6]; g2 = [1 -2 3 3 -2 1];
ycir = cconv(g1,g2,6);
disp('Result of circular convolution = ');disp(ycir)
G1 = fft(g1,6); G2 = fft(g2,6);
yc = real(ifft(G1.*G2,6));
disp('Result of IDFT of the DFT products = ');disp(yc)