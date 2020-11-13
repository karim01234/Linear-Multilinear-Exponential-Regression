function[sol]=GradFixePdonnees(a)
x=a/2;
y=a;
n=0;
d=0.01;
%initialisation la matrice initiale des donnees avec 
%une taille assez grande qu'on va le régler eventuellement
%dans la matrice donneesRes qui est le resultat
donnees=zeros(2000,2);
%ajout du vecteur de depart
donnees(1,:)=a;
%algorithme
    while norm(y-x)>eps
     n=n+1;
     x=y;
     y=y-d*DF(y);
     %ajout du vecteur calculé
     donnees(n+1,:)=y;
    end;
%%initialisation la matrice initiale de donnees 
%de taille le nombre d'iteration    
donneesRes=zeros(n+1,2);
donneesRes(n+1,:)=donnees(n+1,:);
%l'ajout des donnees
for i=1:n+1
    donneesRes(i,:)=donnees(i,:);
end;
sol=donneesRes;

