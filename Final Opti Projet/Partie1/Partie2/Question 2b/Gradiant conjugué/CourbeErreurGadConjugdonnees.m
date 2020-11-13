function[sol]=CourbeErreurGadConjugdonnees(a)
%Construction de la matrice d'erreur
e=linspace(10^-15,10^-1);
%initialisation de la matrice des nombres d'iterations
nbr=zeros(1,100);
%la remplir 
for i=1:100
    [sol,n]=GradConjugPe(a,e(1,i));
    nbr(1,i)=n;
end;
sol=nbr;