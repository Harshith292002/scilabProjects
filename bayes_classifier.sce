function [z]= bayes_classifier(m,s,p,x)
[l,c] = size(m);
[l,N]=size(x);
for i=1:N
for j=1:c
t(j)=p(j)*comp_gauss_dens_val(m(:,j),s(:,:,j),x(:,i));
end
[num,z(i)]=max(t);
end
end
