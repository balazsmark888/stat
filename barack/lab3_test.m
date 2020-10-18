function lab3_test
  X = BisectionMethod('normal', 1000, 10^(-9), [0,1], -10, 10);
  hist(X);
endfunction
