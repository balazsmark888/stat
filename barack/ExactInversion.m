function X = ExactInversion(distribution_type, parameters, n)
  
  U = UMersenneTwisterRNG(n);
  U = sort(U);
  X = zeros(1,n);
  
  switch(distribution_type)
    case 'exponential'
      lambda = parameters(1);
      if lambda <= 0
        error('Wrong parameter');
      endif
      X = - 1 / lambda * log(1 - U);
    case 'cauchy'
      sigma = parameters(1);
      if sigma <= 0
        error('Wrong parameter');
      endif
      X = sigma * tan(pi * (U - 1/2));
    case 'rayleigh'
      sigma = parameters(1);
      if sigma <= 0
        error('Wrong parameter');
      endif
      X = sigma * sqrt(-2 * log(1-U));
    case 'triangular'      
      a = parameters(1);
      X = a * (1 - sqrt(1 - U));
    case 'rayleigh_2'
      a = parameters(1);
      if a <= 0
        error('Wrong parameter');
      endif
      X = sqrt(a^2 - 2 * log(1-U));
    case 'pareto' 
      a = parameters(1);
      b = parameters(2);
      if a <= 0 || b <=0
        error('Wrong parameter');
      endif
      X = b / (1 - U) ^ (1 / a);
    case 'lab3_1'
      X = ##blabla 
  endswitch  
endfunction
