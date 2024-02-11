clear ;
clc ;
E=[-1,-1,1,1];
F=[-1,1,-1,1]; 
x (1 ,1:4) =E;
x (2 ,1:4) =F;
[m,n]=size(E)
B=[1 1 1 1] 
for i=1:n
if x(1,i)==1 & x(2,i)==1 
    y(1,i)=1
elseif x(1,i)==-1 & x(2,i)==1 
    y(1,i)=-1
elseif x(1,i)==1 & x(2,i)==-1 
    y(1,i)=-1
else
y(1,i)=-1 
end
end
disp("input is", x);
disp("Target is",y)

for i=1:n 
    delw1(1,i)=x(1,i)*y(1,i) 
    delw2(1,i)=x(2,i)*y(1,i) 
    delb(1,i)=y(1,i)
end
disp("Del w1 is",delw1); 
disp("Del w2 is",delw2 ); 
disp("Del bias is", delb ); 
w1old=0;
w2old=0;
bold=0;
for i=1:n
w1new(1,i)=w1old+delw1(1,i); 
w2new(1,i)=w2old+delw2(1,i);
bnew(1,i)=bold+delb(1,i);
w1old=w1new(1,i); 
w2old=w2new(1,i); 
bold=bnew(1,i)
end

disp(" w1 newis",w1new);
disp("w2 new is",w2new ); 
disp("new bias is", bnew );
