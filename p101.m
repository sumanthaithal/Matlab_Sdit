clc;
clear all;
close all;
x1(n)=input('Enter the first sequence');
x2=input('Enter the second sequence');
a1=input('Enter the first scaling factor');
a2=input('Enter the second scaling factor');
N1=length(x1);
N2=length(x2);
X1=fft(x1,N1);
X2=fft(x2,N2);
RHS=(a1.*X1)+(a2.*X2);
z=a1.*x1+a2.*x2;
LHS=fft(z);
if(LHS==RHS)
    disp('Linearity property is proved');
    disp('LHS=');
    disp(LHS);
    disp('RHS=');
    disp(RHS);
else
    disp('Linearity property not proved');
end