function [X, newInitialValue] = URNG2(initialValue,n)

m = 2^31 - 1;
a = 2^16 + 3;
c = 0;

[X, newInitialValue] = LCG(m,a,c,initialValue,n);