subplot(2,1,1);
hist(Poisson(5,5000));
title('Poisson 5');

subplot(2,1,2);
hist(Csonkolas('geometrial',2/3,5000));
title('Csonkolas geo 2/3');
