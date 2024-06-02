function bai0212 
%Given the above graph
%a. Determine the difference equation governing the above system.
%b. Let [a1i,a2i,e0i,e1i]=rand(1,4) for the ith DT system and c0=rand, using the impz to find the impulse response. To have the same results for all simulations of the students, the command rng(0) is suggested to create the default seed for the command rand.
clc;clear;close all;
rng(0) ; 
 a = rand(1,4) ; 
 b = rand(1,4) ;
 c = rand(1,4) ;
a11 = a(1) ; a21=a(2) ; e01 =a(3) ; e11= a(4);
a12 = b(1) ; a22 = b(2) ; e02=b(3) ; e12=b(4) ;
a13 = c(1) ; a23 = c(2) ; e03 = c(3) ;e13=c(4) ; 
C0 = rand ; 
num1 =[e01,e11,0] ; 
num2 =[e02,e12,0] ;
num3 =[e03,e13,0] ;
den1 =[1,-a11,-a21] ; 
den2 =[1,-a12,-a22] ;
den3 =[1,-a13,-a23] ;

%num = conv(conv(conv(C0,num1),num2),num3)+conv(conv(num1,den2),den3)+conv(conv(num2,den1),den3)+conv(conv(num3,den1),den2); 
%den = conv(conv(den1,den2),den3) ;
h1 = impz(num1,den1,20) ; 
h2 = impz(num2,den2,20) ; 
h3 = impz(num3,den3,20) ;
h = h1+h2+h3+C0*ones(1,20) ; 
figure(1) ; 
subplot(111) ;
stem(h) ; 
grid ; 