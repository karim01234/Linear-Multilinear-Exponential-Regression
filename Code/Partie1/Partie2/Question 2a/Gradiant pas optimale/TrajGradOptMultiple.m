function[]=TrajGradOptMultiple()
subplot(2,2,1);
TrajGradOpt([.1,1.4]');
title('[0.1,1.4]');
subplot(2,2,2);
TrajGradOpt([1.7,.2]');
title('[1.7,0.2]');
subplot(2,2,3);
TrajGradOpt([1.98,1.8]');
title('[1.98,1.8]');
subplot(2,2,4);
TrajGradOpt([.2,.2]');
title('[0.2,0.2]');

