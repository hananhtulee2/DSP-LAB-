% y(n)=nx(n)+x(n-1)
% Generate the input sequences
clc;
close all;
n = 0:40; D = 10;a = 3.0;b = -2;
x = a*cos(2*pi*0.1*n) + b*cos(2*pi*0.4*n);
xd = [zeros(1,D) x];
% Modify here
x1=[0 x]; %x(n-1)
x2=[x 0]; %x(n)
y=[n 41].*x2+x1; %42 elements
xd1=[0 xd]; %xd(n-1)
xd2=[xd 0]; %xd(n)
yd=[n 41:(41+D)].*xd2+xd1;%52 elements
% num = [2.2403 2.4908 2.2403];
% den = [1 -0.4 0.75];
% ic = [0 0]; % Set initial conditions
% % Compute the output y[n]
% y = filter(num,den,x,ic);
% % Compute the output yd[n]
% yd = filter(num,den,xd,ic);
% % Compute the difference output d[n]
d = y(2:42) - yd(2+D:42+D);
% Plot the outputs
subplot(3,1,1)
stem(n,y(2:42));
ylabel('Amplitude'); 
title('Output y[n]'); grid;
subplot(3,1,2)
stem(n,yd(2:42));
ylabel('Amplitude');
title(['Output due to Delayed Input x[n Ð', num2str(D),']']); grid;
subplot(3,1,3)
stem(n,d);
xlabel('Time index n'); ylabel('Amplitude');
title('Difference Signal'); grid;
