clc;
clf;
clear all;
g = input("Enter the first sequence: ");
h = input("Enter the second Sequence: ");
N1=length(g);
N2=length(h);
N=max(N1,N2);
N3=N1-N2;
if (N3>=0) then
    h=[h,zeros(1,N3)];
else 
    g=[g,zeros(1,-N3)];
end
for n=1:N
    y(n)=0;
    for i=1:N
        j=n-i+1;
        if (j<=0)
            j=N+j     
end
y(n)=y(n)+g(i)*h(j);
end
end
disp("Sequence y= ");
disp(y);
plot2d3(y);
