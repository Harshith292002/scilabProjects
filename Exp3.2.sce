
//Program 2
clc
clear all

rand('seed',0);

N=[100 100];
l=2;

x=[3 3]';

X1=[2*rand(l,N(1))2*rand(l,N(2))+x*ones(1,N(2))];
X1=[X1; ones(1,sum(N))];
y1=[-ones(1,N(1)) ones(1,N(2))];

figure(1),
plot(X1(1,y1==1),X1(2,y1==1),'bo',X1(1,y1==-1),X1(2,y1==-1),'r.')

