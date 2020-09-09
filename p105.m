clc;
clear all;
close all;
x=input('Enter the first sequence');
h=input('Enter the second sequence');
N1=length(x);
N2=length(h);
X=[x,zeros(1,N2)];
H=[h,zeros(1,N1)];
for i=1:N1+N2-1
    y(i)=0;
    for j=1:N1
        if(i-j+1>-0)
            y(i)=y(i)+x(j).*H(i-j+1);
        else
        end
    end
end
n=N1+N2-1;
X1=fft(x,n);
X2=fft(h,n);
X=X1.*X2;
subplot(2,1,1);
Z1=abs(X);
stem(Z1);
title('answer using DFT method');
Y=fft(y,n);
subplot (2,1,2);
Z2=abs(Y);
stem(Z2);
title('using defination');