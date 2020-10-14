function [X, newInitialValue] = URNG1(initialValue,n)

m = 2^31 - 1;
a = 7^5;
c = 0;

[X, newInitialValue] = LCG(m,a,c,initialValue,n);
 