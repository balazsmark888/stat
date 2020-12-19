function L = Cholesky(A)

    n = length(A);
    L = zeros(n,n);
    
    for i = 1 : n
       
        k = 1:i-1;
        L(i,i) = sqrt(A(i,i) - sum(L(i,k) .^ 2));
        
        for j = i + 1 : n
            
            L(i,j) = 1/L(i,i) * (A(i,j) - sum(L(i,k) .* L(j,k)));
            
        end
        
    end

end