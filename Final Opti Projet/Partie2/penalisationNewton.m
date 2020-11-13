function a=penalisationNewton(lambda,x0,epsilon)
load partie2;
a0=x0+2; %pour assurer l'entrée dans la boucle while
a1=x0;
A=X'*X+lambda*eye(length(X'*X));
b=X'*y;
    while norm(a1-a0)>epsilon
     a0=a1;
     a1=a0-inv(A)*(A*a0-b); 
     % car A est le gradient deuxieme de notre fonction et A*a-b est son gradient
    end
a=a1;
end