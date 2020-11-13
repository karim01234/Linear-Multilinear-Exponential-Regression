X=grad_accelere([-2;-1],[1;-1],0.0001,0.09,0.000001,t,y);
s=size(X);
k=s(2);
for i=1:200:k
    K=X(1,i)*(1-exp(X(2,i)*t));
    plot(t,K,t,y,'.');
    ylim([-2 1.5]);
    F(i)=getframe;
end
K=X(1,k)*(1-exp(X(2,k)*t));
plot(t,K,t,y,'.');
ylim([-1.5 1.5]);
F(k)=getframe;



