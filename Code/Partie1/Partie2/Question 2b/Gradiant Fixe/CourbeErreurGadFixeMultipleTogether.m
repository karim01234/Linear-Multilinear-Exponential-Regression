function[]=CourbeErreurGadFixeMultipleTogether()

subplot(2,2,1);
CourbeErreurGadFixe([.1,1.4]');
title('[0.1,1.4]');
subplot(2,2,2);
CourbeErreurGadFixe([1.7,.2]');
title('[1.7,0.2]');
subplot(2,2,3);
CourbeErreurGadFixe([1.98,1.8]');
title('[1.98,1.8]');
subplot(2,2,4);
CourbeErreurGadFixe([.2,.2]');
title('[0.2,0.2]');
