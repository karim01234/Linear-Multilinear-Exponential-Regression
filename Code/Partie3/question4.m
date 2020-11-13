%load partie3.mat
x0=[1 5];
v0=[5 3];
x1=grad_erreur(x0(1),x0(2),t,y);
v1=grad_erreur(v0(1),v0(2),t,y);
x=(v0-x0)*(v1-x1);
x
% ce n'est pas une fonction convexe car grad .... <0

