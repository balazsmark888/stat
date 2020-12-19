function F = ContinuousCDF2(x,d_t,par)
f = @(x) ContinuousPDF2(x,d_t,par);
mins = zeros(1,2);
n = length(x);
switch(d_t)
    
end
F = zeros(d,n);
for k = 1 : 2
    
    F(k,1) = quad2d(f,mins(1),x(1,1),mins(2),x(2,1));
    
    for i = 2:n
        
        F(k,i) = F(k,i-1) + quad2(f,x(i-1,1),x(i,1),x(i-1,2),x(i,2));
        
    end

end

