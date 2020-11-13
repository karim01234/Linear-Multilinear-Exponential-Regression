%load partie3.mat
a=-20:0.05:20;
b=a;
[A,B]=meshgrid(a,b);
M=zeros(size(A));
l=size(A);
for k=1:l(1)
    for j=1:l(1)
        M(k,j)=erreur(A(k,j),B(k,j),t,y);
    end
end
mesh(A,B,M);
contour(A,B,M);
