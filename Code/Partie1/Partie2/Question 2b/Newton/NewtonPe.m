function[sol,n]=NewtonPe(a,e)
%Construction des variables initiales
%pour avoir la condition norm(y-x)>eps v�rfi�
%pour entre dans le boucle
x=a/2;
y=a;
%initialisation du compteur
n=0;
    while norm(y-x)>e
     %incrementation du compteur
     n=n+1;
     
     x=y;
     y=y-inv(DDF(y))*DF(y);
    end
sol=x;