function[]=CourbeErreurGadConjMultipleTogether()

subplot(2,2,1);
CourbeErreurGadConjug([.1,1.4]');
title('[0.1,1.4]');
subplot(2,2,2);
CourbeErreurGadConjug([1.7,.2]');
title('[1.7,0.2]');
subplot(2,2,3);
CourbeErreurGadConjug([1.98,1.8]');
title('[1.98,1.8]');
subplot(2,2,4);
CourbeErreurGadConjug([.2,.2]');
title('[0.2,0.2]');
