clc;
close all;
clear all;
x=input('Enter the first sequence');
h1=input('Enter the second sequence');
h2=input('Enter the third sequence');
X=fft(x);
H1=fft(h1);
Y1x=X1.*H1;
Y1h=H1.*X1;
y1x=ifft(Y1x);
y1h=ifft(Y1h);
if y1x==y1h
    disp('commutative property is proved');
else
    disp('error is compilation');
end
H2=fft(h2);
Yxh=X1.*(H1.*H2);
Yhx=(X1.*H1).*H2;
yxh=ifft(Yxh);
yhx=ifft(Yhx);
if yxh==yhx
    disp('associative property proved');
else
    disp('error in compilation');
end
Y11=X1.*(H1+H2);
Y12=X1.*H1+X1.*H2;
y11=ifft(Y11);
y12=ifft(Y12);
if y11==y12
    disp('distributive property proved');
else
    disp('error in compilation');
end