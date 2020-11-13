function[res]=E(a)
%Chargement des donnees
load Partie1;
%Obtntion du taille de x
[i0,i1]=size(x);
%Construction de M
M=ones(i0,2);
M(:,2)=x;
%Construction de m
m=y;
%calcul de E(a)
K=M*a-m;
res=dot(K,K);