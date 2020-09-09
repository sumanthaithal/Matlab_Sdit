clc;
clear all;
close all;
x=input('enter the sequence');
y=fliplr(x);
z=conv(x,y);
disp(z);
n=0:length(x)-1;
subplot(2,1,1);
stem(n,x);
N=-length(x)+1:length(x)-1;
subplot(2,1,2)
stem(N,z);