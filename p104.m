clc;
clear all;
close all;
x1=input('Enter the first sequence');
x2=input('Enter the second sequence');
N1=length(x1);
N2=length(x2);
n=N1
y=zeros(1,N);
X1=fft(x1,N1);
X2=fft(x2,N2);
X3=X1.*X2;
N3=length(X3);
X4=ifft(X3,N3);
disp(X4);
stem(X4);
for i=1:N1+N2-1
    y(i)=0;
    for j=1:N1
        if(i-j+1>-0)
            y(i)=y(i)+x1(j).*H(i-j+1);
        else
        end
    end
end
Y=fft(y,n);
disp(Y)
if (Y==X4)
    disp('Proved');
end

