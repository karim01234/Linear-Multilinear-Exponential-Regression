function [L]=methode_inertie(x0,v0,pas,pasv,eps,t,y)
x1=x0;
v1=v0;
v2=pasv*v1+pas*grad_erreur(x1(1),x1(2),t,y);
x2=x1-v2;
L=[x0,x2];
while norm(x2-x1) > eps
    x1=x2;
    v1=v2;
    v2=pasv*v1+pas*grad_erreur(x1(1),x1(2),t,y);
    x2=x1-v2;
    L=[L,x2];
end
end
