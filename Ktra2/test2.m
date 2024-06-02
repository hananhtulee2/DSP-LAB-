% Test2
clc ; clear all ; close all ;
N = 200 ; 
a = 2 ;
D = 10 ; 
n = 0:N; 
parsum = 0 ;
x = [1 zeros(1,N)] ; 
x1 =[zeros(1,D) x] ;
x2 = 2.*x ; 
%tuso x(n)
num = [1 0.41 -2.364 -0.341];
%mauso y(n) 
den = [1 -1 -8.75];
% ngo ra y 
y = 11*filter(num,den,x) ; 
%ngo ra yd 
yd = 11*filter(num,den,x1) ;
%ngo ra y2 
y2 = 11*filter(num,den,x2) ; 
%tinh do sai biet 
d = y-yd(1+D:201+D) ;
d1 = 2*y - y2 ;
for k = 1:N+1;
parsum = parsum + abs(y(k));
if abs(y(k)) < 10^(-6), break, end
end

disp('ValueY = ') ; disp(parsum);
disp('Valueabsy(k) = ') ; disp(abs(y(k)));
%ve 
subplot(4,1,1);
stem(n, y);
ylabel('Amplitude');
title('Output Y');
grid;

subplot(4,1,2);
stem(n, yd(1:201));
ylabel('Amplitude');
title('Output Yd');
grid;

subplot(4,1,3);
stem(n, d);
xlabel('Time index n');
ylabel('Amplitude');
title('Difference Signal 1');
grid; 

subplot(4,1,4);
stem(n, d1);
xlabel('Time index n');
ylabel('Amplitude');
title('Difference Signal 2');
grid; 