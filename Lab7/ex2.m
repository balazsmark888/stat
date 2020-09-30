function ex2(n)

f = @(x,y)((1/2) * sin(x + y));
X = zeros(2,n);
M = 1/2;

for i=1:n
    U = UMersenneTwisterRNG() * pi/2;
    V1 = UMersenneTwisterRNG() * pi/2;
    V2 = UMersenneTwisterRNG() * pi/2;
    while U * M > f(V1, V2)
        U = UMersenneTwisterRNG() * pi/2;
        V1 = UMersenneTwisterRNG() * pi/2;
        V2 = UMersenneTwisterRNG() * pi/2;
    end
    X(1,i) = V1;
    X(2,i) = V2;
end

    expVal_x = mean(X(1, :))
    deviation_x = sqrt(var(X(1, :)))
    expVal_y = mean(X(2, :))
    deviation_y = sqrt(var(X(2, :)))
    
end