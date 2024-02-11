//Programme-2: Develop program to update weight and bias by using correction learning
clear
clc
//initialise the inputs
x=[1 0 0
1 0 1
1 1 0
1 1 1];
disp("Input is :");
disp("B x1 x2");
disp(x);

yd=[0;0;0;1]; // This is for AND gate
disp("Target Output Yd Is :");
disp(yd);
ya=rand(4,1);

w=rand(1,3);
w1=w
disp("Initialise Random Weights:");
disp(" W1 W2 W3");
disp(w);
lr=0.5; // learning rate
disp("Learning Coefficient =");
disp(lr);
flag=0;
net=0;
err=0;
epoch=0;
thresh=0;
while flag==0 do
for i=1:4
for j=1:3
net=net+w(1,j)*x(i,j);
end;
if net >= thresh then // threshold activation function
ya(i,1)=1;
else
ya(i,1)=0;
end;
err=yd(i,1)-ya(i,1);
for j=1:3
w(1,j)=w(1,j)+ (lr*x(i,j)*err); // error correction learning
end;
net=0.00; //Reset net for next iteration
end
disp(ya,"Actual Output");
disp(yd,"Desired Output");
epoch=epoch+1;
disp("End of Epoch No:");
disp(epoch);
disp("************************************************************’");
if epoch > 1000 then
disp("Learning Attempt Failed !")
break
end;
if yd(1,1) == ya(1,1)& yd(2,1) == ya(2,1) & yd(3,1) == ya(3,1) & yd(4,1) == ya(4,1) then
    flag=1;
else
flag=0;
end
end
disp("Initial Random Weights -");
disp(w1);
disp("Final Adjusted Weights -");
disp(w);
disp(lr,"Learning rate is – ")
disp("***********************************’")
plot(yd,ya);

