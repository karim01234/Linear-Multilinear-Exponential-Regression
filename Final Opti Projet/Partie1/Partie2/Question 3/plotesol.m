function[]=plotesol()
load Partie1;
plot(x,y);
axis([0 2.5 0 2.5]);
hold on;
abs=0:.1:1.1;
%ord=1.2*abs+0.85;
ord=1.2083*abs+0.8844;
plot(abs,ord,'r-');
hold off;
