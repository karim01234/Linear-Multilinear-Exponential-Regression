function [G]=grad_erreur(a,b,t,y)
G=zeros([2 1]); 
E=erreur(a,b,t,y);
for i=1:length(t)
    G(1)=G(1)+(-2).*(1-exp(b.*t(i))).*(y(i)-a.*(1-exp(b.*t(i))));
    G(2)=G(2)+2.*a.*t(i).*exp(b.*t(i)).*(y(i)-a.*(1-exp(b.*t(i))));
end
G=G/exp(E);
end
