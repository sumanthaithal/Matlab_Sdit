clc;
clear all;
close all;
x1=input('Enter the sequence');
X1=fft(x1);
N=length(X1);
en1=sum(x1.^2);
en2=(1/N)*sum(abs(X1).^2);
if(en1==en2)
    disp('Parsevals theorem proved');
    disp('energy==');
    disp(en2);
end