function[sol,n]=GradOptPe(a,e)
x=a/2;
y=a;
n=0;
[A,b]=construire();
    while norm(y-x)>e
     n=n+1;
     x=y;
     r=A*x-b;
     d=dot(r,r)/dot(A*r,r);
     y=y-d*DF(y);

    end
sol=x;

%Plus que l'errur petite plus qu'il prends beaucoup du temps