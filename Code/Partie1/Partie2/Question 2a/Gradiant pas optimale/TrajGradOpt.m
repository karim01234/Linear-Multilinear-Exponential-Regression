function[]=TrajGradOpt(a)
visualiserContour();
hold on;
donnees=GradOptPdonnees(a);
plot(donnees(:,1),donnees(:,2),'r.-');
hold on;


 