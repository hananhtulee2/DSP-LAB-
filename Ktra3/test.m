%test

A=2;f1=2000;f2=8000;
T=1/gcd(f1,f2);
t=0:T:0.01; 
fs=1/T; %tan so lay mau 
xt=A*sin(2*pi*f1*t)+A*sin(2*pi*f2*t);

subplot(4,1,1);
stem(t,xt);
title('The naturally sampled signal');


subplot(4,1,2);
stairs(t,xt);
title('The flat-top sampled signal');


XF=fft(xt);
subplot(4,1,3)
plot(t,abs(XF));
title('Spectrum of the origi signal');


