load partie3.mat
x0=[1;0];
v0=[1;2];
L1=methodepasfixe(x0,0.000001,0.0001,t,y);
L2=methode_inertie(x0,v0,0.0004,0.09,0.000001,t,y);
L3=grad_accelere(x0,v0,0.0004,0.09,0.000001,t,y);

L1
L2
L3

