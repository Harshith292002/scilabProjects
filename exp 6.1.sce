
clc;
Sigma = [0.5 0.05; 0.05 0.5];
f1 = grand(1000,"mn",[0.5 0]' ,Sigma); 
f2=grand(1000,"mn",[0.5 0.5]' ,Sigma); 
f3=grand(1000,"mn",[0.5 1]' ,Sigma); 
f4=grand(1000,"mn",[0.5 1.5]' ,Sigma);


F=f1'
figure;
plot(F(:,1), F(:,2),'ro')

feature_vector = F;
number_of_clusters = 4;
Kmeans_iteration = 40;

[cluster_centers, data] = km_fun(feature_vector, number_of_clusters, Kmeans_iteration); //% K-m
disp(cluster_centers); 
figure;
PT = feature_vector(data(:,number_of_clusters+1) == 1, :);

plot(PT(:, 1),PT(:, 2),'bo', 'LineWidth', 2);
set(gca(),"auto_clear","off")
PT = feature_vector(data(:,number_of_clusters+1) == 2, :);
plot(PT(:, 1),PT(:, 2),'ro', 'LineWidth', 2);
set(gca(),"auto_clear","off")
PT = feature_vector(data(:,number_of_clusters+1) == 3, :);
plot(PT(:, 1),PT(:, 2),'go', 'LineWidth', 2);
set(gca(),"auto_clear","off") 
plot(PT(:, 1),PT(:, 2),'yo', 'LineWidth', 2);
set(gca(),"auto_clear","off") 
plot(cluster_centers(:, 1), cluster_centers(:, 2), '*k', 'LineWidth', 7); 
