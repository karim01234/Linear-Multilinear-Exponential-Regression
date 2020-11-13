function [L]=grad_accelere(x0,v0,pas,pasv,eps,t,y)
v=pasv*v0+pas*grad_erreur(x0(1),x0(2),t,y);
x=x0-v;
L=[x0,x];
while(norm(x-x0)>eps)
    x0=x;
    v=pasv*v+pas.*grad_erreur(x(1)-pas*v(1),x(2)-pas*v(2),t,y);
    x=x-v;
    L=[L,x];
    
end

end