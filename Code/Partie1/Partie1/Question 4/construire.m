function[A,b]=construire()
load Partie1;
%Construction de M et m
[i0,i1]=size(x);
M=ones(i0,2);
M(:,2)=x;
m=y;
%Construction de Aet b
A=M'*M;
b=M'*m;