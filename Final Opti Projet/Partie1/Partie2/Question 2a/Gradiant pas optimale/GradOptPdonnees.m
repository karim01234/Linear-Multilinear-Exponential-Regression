
function[sol,n]=GradOptPdonnees(a)
x=a/2;
y=a;
n=0;
[A,b]=construire();
%initialisation la matrice initiale des donnees avec 
%une taille assez grande qu'on va le régler eventuellement
%dans la matrice donneesRes qui est le resultat
donnees=zeros(1000,2);
%ajout du vecteur de depart
donnees(1,:)=a;
%algorithme
    while norm(y-x)>eps
     n=n+1;
     x=y;
     r=A*x-b;
     d=dot(r,r)/dot(A*r,r);
     y=y-d*DF(y);
     %ajout du vecteur calculé
     donnees(n+1,:)=y;
    end
%%initialisation la matrice initiale de donnees 
%de taille le nombre d'iteration
donneesRes=zeros(n,2);
%l'ajout des donnees
for i=1:n
    donneesRes(i,:)=donnees(i,:);
end;
sol=donneesRes;

