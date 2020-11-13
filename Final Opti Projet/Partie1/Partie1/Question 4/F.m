function[res]=F(a)
[A,b]=construire();
res=0.5*dot(A*a,a)-dot(b,a);