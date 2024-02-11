

//%% K-means
function [CENTS, DAL]=km_fun(F, K, KMI)
     CENTS = F( ceil(rand(K,1)*size(F,1)) ,:);
      DAL = zeros(size(F,1),K+2);
for n = 1:KMI
for i = 1:size(F,1) for j = 1:K
DAL(i,j) = norm(F(i,:) - CENTS(j,:)); end
[Distance, CN] = min(DAL(i,1:K));
DAL(i,K+1) = CN;
DAL(i,K+2) = Distance; end
for i = 1:K
A = (DAL(:,K+1) == i); CENTS(i,:) = mean(F(A,:));
if sum(isnan(CENTS(:))) ~= 0
Random Point
NC = find(isnan(CENTS(:,1)) == 1);
for Ind = 1:size(NC,1)
CENTS(NC(Ind),:) = F(randi(size(F,1)),:);
end end
end end
end
