function[]=visualiser()
%Construction d'une grille de points
a0=0.1:0.05:2;
a1=0.1:0.05:2;
[A0,A1]=meshgrid(a0,a1);
[index0,index]=(size(a0));
%Construction de la matrice des erreurs 
%en chaque point de la grille
Z=zeros(index,index);
for i=1:index
    for j=1:index
        a=[A0(i,j),A1(i,j)]';
        Z(i,j)=E(a);
    end;
end;
%Generation de l'observation 3D
figure;
surf(A0,A1,Z);
zlabel('Erreur');
xlabel('a0');
ylabel('a1');
colorbar;
%Generation de l'observation du contour
figure;
contour(A0,A1,Z,200);
colorbar;
%contour(A0,A1,Z,200);%,'ShowText','on');



