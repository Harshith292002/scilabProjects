
clc;
clear

[fd,SST,Sheetnames,Sheetpos]=xls_open("/Users/harshith/Desktop/Experiment 5/imagedataset.xls");
for l=1:30
    a11=SST(l)
    a44=strcat([a11,".png"])
    a22=strcat(["/Users/harshith/Desktop/Experiment 5/images",a44])

a=imread(a22); 
b=rgb2gray(a);


a33=im2double(b); 
mean1(l,1)=mean(a33); 
std1(l,1)=stdev(a33);
min1(l,1)=min(a33); 
max1(l,1)=max(a33);


end
features=[mean1,std1,min1,max1]; 
disp("The features are", features)


// pearson's correlation estimation
[m,n]=size(features) 
for i=1: n
    for j=1:n
        car(i,j)= correl(features(:,i),features(:,j));
    end
end

  
[bestfr,bestfc]=find (car>0 & car<0.9); 

best_features=[bestfr' bestfc'];
disp(best_features);
