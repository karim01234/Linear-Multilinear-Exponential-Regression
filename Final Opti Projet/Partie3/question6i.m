a=-10:0.5:10;
b=a;
[A,B]=meshgrid(a,b);
M=zeros(size(A));
L=size(A);
for i=1:L(1)
    for j=1:L(1)
        M(i,j)=erreur(A(i,j),B(i,j),t,y);
    end
end
x0=[1;0];
v0=grad_erreur(x0(1),x0(2),t,y);

K=grad_accelere(x0,v0,0.0004,0.09,0.000001,t,y);
x1=K(1,:);
x2=K(2,:);
hold on
contour(A,B,M);
plot(x1,x2,'r');



