% Program P3_7
% Illustration of Circular Shift of a Sequence
clf;
M = 6;
a = [0 1 2 3 4 5 6 7 8 9];
b = circshift1(a,M); %dich vong sang trai
L = length(a)-1;
n = 0:L;
%ve do thi roi rac ban dau 
subplot(2,1,1);
stem(n,a);axis([0,L,min(a),max(a)]);
title('Original Sequence');
%ve do thi roi rac sau khi dich vong
subplot(2,1,2);
stem(n,b);axis([0,L,min(a),max(a)]);
title(['Sequence Obtained by Circularly Shifting by ',num2str(M),' Samples']);
