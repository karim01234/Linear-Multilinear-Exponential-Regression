function[]=visualiserContour()
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
%res=Z;
contour(A0,A1,Z,50);%,'ShowText','on');
