 12//Programme-1: Develop programme to Implement simple neuron model

clear;
clc;
n=input("Enter number of inputs for neural network");
x=-1+rand(1,n)*2;
disp("Input is ", x)

// randomly generate weight

w=-1+rand(1,n)*2;
disp("weight is ", w)

b=rand(1,1);
u=0;
for i=1:n
 u=u+(x(i)*w(i));
end
v=u+b;

// Threshold activation function
if v>=0
 y1=1
else
 y1=0
end
disp("Output considering activation function as threshold function", y1)

// sigmoid activation function
a=1
y2=(1/(1-exp(-a*v)))
if y2>=0.5
 y3=1
else
 y3=0
end
disp("Output considering activation function as sigmoid function", y3)
