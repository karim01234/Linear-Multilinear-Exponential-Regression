function[]=visualiserContourGradiant()
%Construction d'une grille de points
a0=0.1:0.05:2;
a1=0.1:0.05:2;
[A0,A1]=meshgrid(a0,a1);
[index0,index]=(size(a0));
Z=zeros(index,index);
for i=1:index
    for j=1:index
        a=[A0(i,j),A1(i,j)]';
        Z(i,j)=E(a);
    end;
end;
%traçage du contour
contour(A0,A1,Z,100);
%calcul des gradiants
[px,py]=gradient(Z);
hold on;
%traçage du champ de gradiant
quiver(A0,A1,px,py);
hold off;
