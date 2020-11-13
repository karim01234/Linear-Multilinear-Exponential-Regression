function[res,n]=GrapConjugP(a)
%Construction des variables initiales
r1=DF(a);
d1=r1;
a1=a;
a0=a1/2;
%Construction de A et !b
[A,b]=construire();
%Initialisation du compteur
n=0;
%algorithme
while norm(a0-a1)>1.e-14
    %incrementation du compteur
    n=n+1;
    a0=a1;
    d0=d1;
    r0=r1;
    
    p0=dot(r0,r0)/dot(A*d0,d0);
    
    a1=a0-p0*d0;
    
    r1=DF(a1);
    
    b0=dot(r1,r1)/dot(r0,r0);
    d1=r1+b0*d0;
    
end;
res=a1;
