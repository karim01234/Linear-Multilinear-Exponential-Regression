function TracagePenalisaton()
load partie2;
lambda=1:1:20;
indices=0:1:(length(y)-1);
for i=1:length(lambda)
    
    a(:,i)=penalisationNewton(lambda(i),[1;1;1;1;1;1;1],0.1);
    % a est la matrice conteant pour colonnes les vecteur a pour differents lambda
    Yopt(i,:)=X*a(:,i);% Yopt est la matrice contenant en chaque ligne un vecteur yopt pour un lambda donnée     
end   
ylabel('a');
xlabel('Parametre de pénalisation lambda');
plot(lambda,a) %tracage de a(lambda)
legend('a0','a1','a2','a3','a4','a5','a6')
figure;
ylabel('y');
xlabel('Parametre de pénalisation lambda');
plot(indices,y)
hold()
plot(indices,Yopt) %tracage de yopt(lambda)
end