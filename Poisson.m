function X = Poisson(lambda,r)
X = zeros(1,r);
for k = 1:r
   U = UMersenneTwisterRNG();
   i = 0;
   p = exp(-lambda);
   S = p;
   while(U > S)
      i = i + 1;
      p = p * (lambda / i);
      S = S + p;
   end
   X(k) = i;
end
end