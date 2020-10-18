function X = BisectionMethod (distribution_type, n, delta, parameters, a, b)
  X = zeros(1,n);
  switch (distribution_type)
    case 'normal'
      F = @(x) ContinuousCDF(x, 'normal', parameters);
  endswitch
  
  for i = 1 : n
    U = UMersenneTwisterRNG(1) * (F(b) - F(a)) + F(a);
    temp_a = a;
    temp_b = b;
    while temp_b - temp_a <= 2 * delta
      X(i) = (temp_a + temp_b) / 2;
      if F(X(i) <= U)
        temp_a = X;
      else
        temp_b = X;
      endif
    endwhile    
  endfor
  
  
endfunction
