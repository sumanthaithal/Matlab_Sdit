clc;
clear all;
close all;
x1=input('Enter the first sequence');
x2=input('Enter the second sequence');
N1=length(x1);
X3=zeros(1,N1);
for m=1:N1
    for n=1:N1
        X3(m)=X3(m)+x1(n).*x2(mod((m-n),N1)+1);
    end
end
disp(X3);
n1=0:length(X3)-1;
subplot(2,1,1);
stem(n1,X3);
N2=length(x2);
X1=fft(x1,N1);
X2=fft(x2,N2);
X7=X1.*X2;
N3=length(X7);
X8=ifft(X7,N3);
if (X3==X8)
    disp('LHS=RHS');
end
n2=0:length(X8)-1;
subplot(2,1,2);
stem(n2,X8);
disp(X8);
