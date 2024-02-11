clc;

//Generate cse(1)
rand("seed",0);
m=[0 0]';
S = [1 0;0 1];
N = 500;

X=grand(N,"mn",m,S)

//PLot first dataset
figure(1);
plot(X(1,:),X(2,:),'.');

//Generate and Plot dataset 2
m=[0 0]';
S=[0.2 0;0 0.2];
N = 500;
X = grand(N,"mn",m,S)
figure(2),
plot(X(1,:),X(2,:),'.');

//Generate and Plot dataset 3
m=[0 0]';
S=[2 0;0 2];
N = 500;
X = grand(N,"mn",m,S)
figure(3),
plot(X(1,:),X(2,:),'.');

//Generate and Plot dataset 4
m=[0 0]';
S=[0.2 0;0 2];
N = 500;
X = grand(N,"mn",m,S)
figure(4),
plot(X(1,:),X(2,:),'.');







