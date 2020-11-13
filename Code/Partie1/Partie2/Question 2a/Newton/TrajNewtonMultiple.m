function[]=TrajNewtonMultiple()
%On va visualiser 4 examples
%On divise la figuire sur 4 parties
subplot(2,2,1);
TrajNewton([.1,1.4]');
title('[0.1,1.4]');

subplot(2,2,2);
TrajNewton([1.7,.2]');
title('[1.7,0.2]');

subplot(2,2,3);
TrajNewton([1.98,1.8]');
title('[1.98,1.8]');

subplot(2,2,4);
TrajNewton([.2,.2]');
title('[0.2,0.2]');