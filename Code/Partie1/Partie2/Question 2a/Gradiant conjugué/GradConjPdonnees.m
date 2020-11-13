
function[sol,n]=GradConjPdonnees(a)
r1=DF(a);
d1=r1;
a1=a;
[A,b]=construire();
n=0;
%initialisation la matrice initiale des donnees avec 
%une taille assez grande qu'on va le régler eventuellement
%dans la matrice donneesRes qui est le resultat
donnees=zeros(1000,2);
%ajout du vecteur de depart
donnees(1,:)=a;
%algorithme
while norm(r1)>1e-10
    n=n+1;
    a0=a1;
    d0=d1;
    r0=r1;
    p0=dot(r0,r0)/dot(A*d0,d0);
    a1=a0-p0*d0;
    r1=DF(a1);
    b0=dot(r1,r1)/dot(r0,r0);
    d1=r1+b0*d0;
    %ajout du vecteur calculé
    donnees(n+1,:)=a1;
end;
%%initialisation la matrice initiale de donnees 
%de taille le nombre d'iteration
donneesRes=zeros(n+1,2);
%l'ajout des donnees
for i=1:n+1
    donneesRes(i,:)=donnees(i,:);
end;
sol=donneesRes;

