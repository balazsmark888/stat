function [L, Y]= MulDimKorrelalt(d, mu, sigma, n)
    
    L = Cholesky(sigma);
    Y = zeros(n, d);
    for k = 1 : n
     
        [X,~,~] = Kozrefog(d);
        
        temp = mu + X * L;
        
        for j = 1 : d
            Y(k, j) = temp(j);
        end
        
    end

end