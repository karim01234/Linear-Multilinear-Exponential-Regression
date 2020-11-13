function[]=TrajGradConj(a)
visualiserContour();
hold on;
donnees=GradConjPdonnees(a);
plot(donnees(:,1),donnees(:,2),'r.-');
hold on;


 