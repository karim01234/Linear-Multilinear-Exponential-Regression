function [L]=methodepasfixe(x0,eps,pas,t,y)
x1=x0;
x2=x1-pas*grad_erreur(x1(1),x1(2),t,y);
L=[x0,x2];
while norm(x2-x1) > eps
    x1=x2;
    x2=x1-pas*grad_erreur(x1(1),x1(2),t,y);
    L=[L,x2];
end
end