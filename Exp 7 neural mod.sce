
x1=[1 -1 1 1 1 -1 -1 1 -1]
x2=[1 1 1 -1 1 -1 1 1 -1]
x=[x1;x2];
y=[1,-1];
[m,n]=size(x);
w=zeros(1,n);
b=0
for i=1:m
    for j=1:n
        w(j)=w(j)+x(i,j)*y(i)
end
b=b+y(i);
disp ( 'Weight matrix',w);
disp ( ' Bias ',b);
end
