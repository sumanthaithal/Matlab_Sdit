clc;
clear all;
close all;
A=input('enter the signal amplitude');
fm=input('enetr the signal frequency');
t=0:0.001:1;
a=A.*cos(2*pi*fm*t);
subplot(3,1,1);
plot(t,a);
xlabel('t--');
ylabel('x(t)-->');
title('original signal');
fs=input('enter the samplig frequency');
n=0:1/fs:1;
b=A.*cos(2*pi*fm*n);
subplot(3,1,2);
stem(n,b);
title('sampled signal');
xlabel('n--');
ylabel('y(n)-->');
subplot(3,1,3);
ni=0:0.001:1;%Reconstruction using sin interpolation
Re=interp1(n,b,ni,'sinc');
plot(ni,Re,'r');
title('reconstructed signal');