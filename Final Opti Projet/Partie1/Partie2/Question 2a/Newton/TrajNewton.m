function[]=TrajNewton(a)
visualiserContour();
hold on;
donnees=NewtonPdonnees(a);
plot(donnees(:,1),donnees(:,2),'r.-');
hold on;


 