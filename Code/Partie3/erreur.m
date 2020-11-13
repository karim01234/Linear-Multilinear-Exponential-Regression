function [E]=erreur(a,b,t,y)
 somme=0;
 for i=1:length(t)
     somme=somme+(y(i)-a.*(1-exp(b.*t(i))))^2; 
 end
 E=log(somme);
end
