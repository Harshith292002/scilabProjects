clc;
clear;
X = [1 1 -1 -1]
Xv = X
w = zeros(4,4)
w = X' * X
Yin = X*w
for i = 1:4
    if Yin(i)>0
        Y(i)=1
    else
        Y(i)=-1
    end
end
disp("weights = ",w)
if Xv == Y' then
    disp("Task Completed")
else
    disp("Sorry")
end
