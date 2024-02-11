clc;
clear;
x=[1 1 1 -1; 1 -1 1 -1];
t=[-1 1 1 -1];
w= [0.05 0.1; 0.2 0.2]; 
b1=[0.3 0.5];
v=[0.5 0.5];
b2=0.5;
con=1;
alpha=0.5;
epoch=0;


while con==1
    for i=1:4
        con=0
        for j=1:2
            zin(j)=b1(j)+x(1,i)*w(1,j)+x(2,i)*w(2,1);
            if zin(j)>=0
                z(j)=1;
            else
                z(j)=-1;
end
end
 yin = b2+z(1)*v(1)+z(2)*v(2) ;
if yin>=0 
    y(i)=1;
else
    y(i)=-1;
    end
    if y(i)~=t(i)
        con=1
        if t(i)==1
            if abs(zin(1))>abs(zin(2))
                k=2;
            else
                k=1;
end
err=t(i)-zin(k);
b1(k)=b1(k)+alpha*err;
w(1:2,k)=w(1:2,k)+alpha*err*x(1:2,i);
else 
    for k=1:2
        if zin(k)>0
            err=t(i)-zin(k)
            b1(k)=b1(k)+alpha*err;
            w(1:2,k)=w(1:2,k)+alpha*err*x(1:2,i);
        end
    end
end
end


disp("x",x);
disp("w",w);
disp("b1",b1);
disp("y",y);
disp("t",t)
epoch=epoch+1
end
    end
