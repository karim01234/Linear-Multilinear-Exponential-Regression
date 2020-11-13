function[res]=MinTheo()
[A,b]=construire();
res=inv(A)*b;