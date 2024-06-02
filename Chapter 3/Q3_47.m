function Q3_47
%clc;
%clear all;
close all;
% num. and den. coefficients of Tranfer Function of DF sys.
num=[2 5 9 5 3];
den=[5 45 2 1 1];
% poles and zeros of sys.
[z,p,k]=tf2zp(num,den);
disp('Zeros are:');
disp(num2str(z));
disp('Poles are:');
disp(num2str(p));
% factorized form
disp('TF is factorized as a sum of the following partial fractions:')
for i=1:length(p)
    disp([['(',num2str(z(i)),')'],'/',['(','1-',['(',num2str(p(i)),')'],'z^-1',')']]);
end
% pole-zero plot
figure(1);
zplane(num,den);
% phi=linspace(0,2*pi,200);
% figure(2);
% z=zeros(length(p),200);
% for k=1:length(p)
%     z(k,:)=abs(p(k))*exp(j*phi);
%     polarplot(phi,z(k,:));
%     hold on;
% end
end