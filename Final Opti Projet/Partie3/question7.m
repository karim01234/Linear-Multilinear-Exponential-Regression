x0=[-2;-1];
v0=[-1;2];
pas=0.0004;
pasv=0.09;
eps=10^-6;
tic
L1=methodepasfixe(x0,eps,pas,t,y);
toc
tic
L2=methode_inertie(x0,v0,pas,pasv,eps,t,y);
toc
tic
L3=grad_accelere(x0,v0,pas,pasv,eps,t,y);
toc
l1=size(L1);
l2=size(L2);
l3=size(L3);
l1(2)
l2(2)
l3(2)
