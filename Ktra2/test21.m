clc ; clear all ; close all ;
N = 200 ;
D = 10 ; 
n = 0:N-1; 
parsum = 0 ;
x = [1 zeros(1,N)] ; 
x1 =[zeros(1,D) x] ;
%tuso x(n)
num = [1 0.41 -2.364 -0.341];
%mauso y(n) 
den = [1 -1 -8.75];
% ngo ra y 
y = 11*impz(num,den,N) ; 
%ngo ra yd 
yd = 11*impz(num,den,N) ; 
%tinh do sai biet 
d = y-yd ; 
for k = 1:N;
parsum = parsum + abs(y(k));
if abs(y(k)) < 10^(-6), break, end
end

disp('ValueY = ') ; disp(parsum);
disp('Valueabsy(k) = ') ; disp(abs(y(k)));

%ve 
subplot(3,1,1);
stem(n,y);
ylabel('Amplitude');
title('Output Y');
grid;

subplot(3,1,2);
stem(n, yd);
ylabel('Amplitude');
title('Output Yd');
grid;

subplot(3,1,3);
stem(n, d);
xlabel('Time index n');
ylabel('Amplitude');
title('Difference Signal');
grid; 