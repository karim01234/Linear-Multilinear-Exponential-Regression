function[sol,n]=GradFixePe(x0,e)
x=x0/2;
y=x0;
n=0;
d=0.01;%Cherchez le pas optimal
%en principe=0.148=2/(lamda1+lamda2)
%maisnle programme se plante
%c=eig(A) dopt=2/(c(1)+c(0))
    while norm(y-x)>e
     x=y;
     y=y-d*DF(y);
     n=n+1;
    end
sol=y;
