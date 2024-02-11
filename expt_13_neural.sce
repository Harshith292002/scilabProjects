clc;
clear;
X = input("Enter the input");
Xv= X
if (sum(X) == 0) then
    disp("The vector is orthogonal")
else
    disp("The vector is not orthogonal")
end
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
    disp("Task not completed")
end
