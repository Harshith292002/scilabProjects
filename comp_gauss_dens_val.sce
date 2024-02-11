function [z]=comp_gauss_dens_val(m,s,x)
[l,c] = size(m);
z = (1/((2*%pi)^(1/2)*det(s)^0.5))*exp(-0.5*(x-m)'*inv(s)*(x-m));
end
