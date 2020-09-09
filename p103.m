clc;
clear all;
close all;
x1=input('Enter the first sequence');
x2=input('Enter the second sequence');
x3=input('Enter the third sequence');
y1=conv(x1,x2);
y2=conv(x2,x1);
if (y1==y2)
    disp('Commutative property is proved');
    disp(y1)
end
y3=conv(x2,x3);
z1=conv(x1,y3);
z2=conv(y1,x3);
if (z1==z2)
    disp('Associative property is proved');
    disp(z1)
end
c1=x2+x3;
z3=conv(x1,c1);
c2=conv(x1,x3);
z4=c2+y1;
if (z3==z4)
    disp('Distributive property is proved');
    disp(z3)
end
