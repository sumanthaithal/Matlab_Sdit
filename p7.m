clc;
clear all;
close all;
X=input('Read the DFT sequence');
N=length(X);
x=zeros(1,N);
for n=1:N
    for K=1:N
        x(n)=x(n)+X(K).*exp(j*2*pi*(K-1)*(n-1)/(N));
    end
end
x1=x./(n);
disp(x1);
stem(x1);