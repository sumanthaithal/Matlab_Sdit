clc;
clear all;
close all;
x=input('Read the input sequence');
N=length(x);
X=zeros(1,N);
for K=1:N
    for n=1:N
        X(K)=X(K)+x(n).*exp(-j*2*pi*(K-1)*(n-1)/(N));
    end
end
disp(X);
subplot(2,1,1);
X1=abs(X);
disp(X1);
stem(X1);
title('magnitude response');
subplot(2,1,2);
X2=angle(X);
disp(X2);
stem(X2);
title('phase response');