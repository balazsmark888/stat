function X = ElutasitasModszereKompakt(f, M, a, b, n)

% <PELDA>
% f(x) = 168 * x^5 * (1 - x)^2
% f'(x) = 168 * x^4 * (7 * x^2 - 12 * x + 5)
% f'(x) = 0 => x = 0, x = 5/7, x = 1

% f = @(x) 168 * x^5 * (1 - x)^2;
% M = f(5/7);
% </PELDA>

X = zeros(1, n);

for i = 1 : n
    U = ULEcuyerRNG();
    V = ULEcuyerRNG();
    Y = a + (b - a) * V;
    
    while U * M > f(Y)
        U = ULEcuyerRNG();
        V = ULEcuyerRNG();
        Y = a + (b - a) * V;
    end
    
    X(i) = Y;
end

end

