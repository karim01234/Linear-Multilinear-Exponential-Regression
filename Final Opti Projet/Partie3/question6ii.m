% on choisit une liste de valeurs au lieu d'utiliser le semilog pour avoir un
%graphe plus parlant 
% on s'arrete a 10^-5 parceque a partir de  moins de 10^-4 l'algorithme ne
% converge pas
epsilon=[10-5 10^-6 10^-7 10^-8 10^-9 10^-10 10^-11 10^-12 10^-13 10^-14 ];
logchain=5:1:14;
N1=zeros(1,10);
N2=zeros(1,10);
N3=zeros(1,10);
for i=1:10
    X1=grad_accelere([1;0],grad_erreur(1,0,t,y),0.0001,0.09,epsilon(i),t,y);
    X2=methode_inertie([1;0],grad_erreur(1,0,t,y),0.0001,0.09,epsilon(i),t,y);
    X3=methodepasfixe([1;0],epsilon(i),0.0001,t,y);
    l1=size(X1);
    l2=size(X2);
    l3=size(X3);
    N1(i)=l1(2);
    N2(i)=l2(2);
    N3(i)=l3(2);
end
hold on 
plot(logchain,N3,'b');
plot(logchain,N2,'g');
plot(logchain,N1,'r--*');

