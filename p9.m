clc;
clear all;
close all;
x=input('Enter the DFT of the sequnce');
n=length(x);
X=ifft(x,n);
disp(X);
stem(X);