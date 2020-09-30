function X = InversionByBinarySearch(x,n)
X = zeros(1,n);
cumprob = cumsum(x(2,:));
for k = 1:n
   u = UMersenneTwisterRNG();
   top = length(cumprob);
   bottom = 1;
   i = BinaryRecursion(cumprob,u,bottom,top);
   X(k) = x(1, i);
end
end