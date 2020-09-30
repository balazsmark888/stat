function X = NewtonRaphsonMethod(d_t,par,epsilon,n,a,b,x1)
X = zeros(1,n);
    
f = @(x) ContinuousPDF(x,d_t,par);
F = @(x) ContinuousCDF(x,d_t,par);

steps = 1000;
for i = 1:n
   U = UMersenneTwisterRNG()*(F(b) - F(a)) + F(a);
   current = 0;
   x = x1;
   while(current < steps && abs(F(x) - U) > epsilon) 
       x = x - (F(x) - U) / f(x);
       current = current + 1;
   end
       X(i) = x;
end
end