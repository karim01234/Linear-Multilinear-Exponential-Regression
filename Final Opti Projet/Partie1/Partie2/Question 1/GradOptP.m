function[sol,n]=GradOptP(a)
%Construction des variables initiales
%pour avoir la condition norm(y-x)>eps vérfié
%pour entrer dans le boucle
x=a/2;
y=a;
%Construction de A et !b
[A,b]=construire();
%Initialisation du compteur
n=0;
%algorithme
    while norm(y-x)>eps
     %incrementation du compteur
     n=n+1;
     
     x=y;
     r=A*x-b;
     d=dot(r,r)/dot(A*r,r);
     y=y-d*DF(y);
     
    end
sol=x;
