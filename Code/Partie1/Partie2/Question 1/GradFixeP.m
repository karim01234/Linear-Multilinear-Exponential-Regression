function[sol,n]=GradFixeP(a)
%Construction des variables initiales
%pour avoir la condition norm(y-x)>eps vérfié
%pour entrer dans le boucle
x=a/2;
y=a;
%Initialisation du compteur
n=0;
%choix du pas
d=0.01;
%algorithme
    while norm(y-x)>eps
     %incrementation du compteur
     n=n+1;   
     
     x=y;
     y=y-d*DF(y);
    end
sol=y;
