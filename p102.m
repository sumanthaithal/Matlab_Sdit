clc;
clear all;
close all;
x=input('Enter the sequence');
N=length(x);
X=zeros(1,N);
X1=zeros(1,N);
for k=1:N
    for n=1:N
        X(k)=X(k)+(x(n)*exp(-1j*2*pi*(n-1)*(k-1)/(N)));
        X1(k)=X1(k)+(x(n)*exp(-1j*2*pi*(n+N-1)*(k-1)/(N)));
    end
end
for k=1:N;
    disp('X(k)');
    disp(X(k));
end
for k=1:N;
    disp('X1(k)');
    disp(X1(k));
end
for k=1:N
if (X(k)==X1(k))
    disp('Periodicity is proved');
end
end