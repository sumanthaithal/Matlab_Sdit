clc;
clear all;
close all;
x=input('Enter the input sequence');
N=length(x);
X=fft(x,N);
disp(X);
x1=abs(X);
figure(1);
stem(x1);
x2=angle(X)
figure(2);
stem(x2);