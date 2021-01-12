function X = InversionBySequentialSearch(x,n)
X = zeros(1,n);
cumprob = cumsum(x(2,:));
for k = 1:n
   u = UMersenneTwisterRNG();
   i = 1;
   while(u > cumprob(i))
       i = i + 1;
       if(i == length(cumprob))
           break;
       end
   end
   X(k) = x(1, i);
end
end