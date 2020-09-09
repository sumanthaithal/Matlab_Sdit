clc;
clear all;
close all;
x=input('Enter the input sequence');
m=length(x);
h=input('Enter the impulse response');
n=length(h);
N=m+n-1;
y=zeros(1,N);
for i=m+1:N
    x(i)=0;
end
for i=n+1:N
    h(i)=0;
end
for n=1:N
    for k=1:n
        y(n)=y(n)+x(k)*h(n-k+1);
    end
end
n1=0:length(y)-1;
disp(y);
stem(n1,y);