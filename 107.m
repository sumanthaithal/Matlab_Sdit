clc;
clear all;
close all;
x1=input('Enter the sequence');
X1=fft(x1);
en1=sum(X1.^2);
en2=(1/4)*sum(abs(X1).^2);
if(en1==en2)
    disp('Parsevals theorem proved');
    disp('energy==');
    disp(en2);
end