a=-10:0.05:10;
b=a;
[A,B]=meshgrid(a,b);
M=erreur(A,B,t,y);
M=zeros(size(A));
L=size(A);
for i=1:L(1)
    for j=1:L(1)
        M(i,j)=erreur(A(i,j),B(i,j),t,y);
    end
end
X1=grad_accelere([-2;-1],grad_erreur(-2,-1,t,y),0.0001,0.09,0.000001,t,y);
X2=methode_inertie([-2;-1],grad_erreur(-2,-1,t,y),0.0001,0.09,0.000001,t,y);
X3=methodepasfixe([-2;-1],0.000001,0.0004,t,y);
l1=X1(1:1,:);
l2=X1(2:2,:);
l3=X2(1:1,:);
l4=X2(2:2,:);
l5=X3(1:1,:);
l6=X3(2:2,:);
hold on
contour(A,B,M);
plot(l1,l2,'r*'); 
plot(l3,l4,'g');
plot(l5,l6,'k');
