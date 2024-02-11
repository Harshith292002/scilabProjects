clc;
clear all;
rand('seed',0)
N= [100 100];
l = 2;
x =[3 3]';
x1 =[2*rand(l,N(1)) 2*rand(l,N(2))+x*ones(1,N(2))];
x1 =[x1;ones(1,sum(N))];
y1 =[-ones(1,N(1)) ones(1,N(2))];
figure(1);
plot(x1(1,y1==1),x1(2,y1==1),'bo',x1(1,y1==-1),x1(2,y1==-1),'.r')
m=[0 0 0; 1 2 2;3 3 4];
s1 = 0.8*eye(3);
s(:,:,1)=s1;s(:,:,2)=s1;s(:,:,3)=s1;
p=[1/3 1/3 1/3];
z_bayesian =bayes_classifier(m,s,p,x1);
for i=1:length(z_bayesian)
if(z_bayesian(i)==3)
z11(i)=1;
else
z11(i)=-1;
end
end
l22 =find(y1'==z11);
correctsamp = length(l22);
err_bayesian = (1-(correctsamp/length(z11)))*100;
acc_classification = ((correctsamp/length(z11)))*100;
z22 =[z11 y1']
disp(z22);
disp('inpercent erorr',err_bayesian);
disp('in percent accuracy is',acc_classification);
