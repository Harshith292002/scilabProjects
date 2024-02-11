clc
clear ;

//a=read_csv('diabetes.csv'); 


b=csvRead("/Users/harshith/Desktop/Experiment 5/diabetes.csv");

disp(b);

disp(b(1:5,:));

[m,n]=size(b);


count=zeros(1,n); 
for i=1:n
    c=b(:,i);

  
for j=1:m
    if ~isnan(c(j))
        count(1,i)=count(1,i)+1;
    end
    end

loc1=find(~isnan(c))
d=c(loc1)
mean1(1,i)=mean(d);
std1(1,i)=stdev(d);
min1(1,i)=min(d); 
max1(1,i)=max(d); 
e(:,i)=gsort(d,'g','i');


ad1=round(length(d)*0.25); 
ad2=round(length(d)*0.5); 
ad3=round(length(d)*0.75); 
f25(1,i)=e(ad1,i) 
f50(1,i)=e(ad2,i) 
f75(1,i)=e(ad3,i)
end

features=[count; mean1; std1; min1; max1; f25; f50; f75]; 
disp(features);


figure(1);
histplot(20,b(2:m,1), style=2) 
title("pregnencies histogram plot") 
figure(2); 
histplot(20,b(2:m,2),style=2) 
title("Glucose histogram plot")


figure(3); 
histplot(20,b(2:m,3),style=2) 
title("BloodPressure histogram plot") 

figure(4);
histplot(20,b(2:m,4),style=2) 
title("SkinThickness histogram plot")

figure(5);
histplot(20,b(2:m,5),style=2)
title("Insulin histogram plot")

figure(6);
histplot(20,b(2:m,6),style=2)
title("BMI histogram plot")

figure(7);
histplot(20,b(2:m,7),style=2) 
title("DiabetesPedigreeFunction histogram plot")

figure(8); histplot(20,b(2:m,8),style=2) 
title("Age histogram plot")

figure(9); histplot(20,b(2:m,9),style=2) 
title("Outcome histogram plot")

// pearson's correlation estimation
for i=1: n
     for j=1:n
         car(i,j)= correl(b(2:m,i),b(2:m,j));
     end
 end
 
[bestfr,bestfc]=find (car>0.5 & car<0.9);

best_features=[bestfr' bestfc']; 
disp(best_features);
