
% [X, ~, ~] = KozrefogasModszere(10000)

function [X, lepesekSzama, kiertekelesekSzama] = KozrefogasModszere( n )

alpha = 1/sqrt(exp(1));
beta = 1/2;
gamma = sqrt(2);

X = zeros(1, n);
lepesekSzama = 0;
kiertekelesekSzama = 0;

for i = 1 : n
    while true
        U = ULEcuyerRNG();
        V = ULEcuyerRNG();
        Y = tan(pi * V);
        S = beta * Y^2;
        W = (alpha * U)/(beta + S);
        
        lepesekSzama = lepesekSzama + 1;
        
        if abs(Y) > gamma
            L = false;
        else
            L = W <= (1 - S);
        end
        
        if L == false
            L = W <= exp(-S);
            kiertekelesekSzama = kiertekelesekSzama + 1;
        end
        
        % exit loop
        if L == true
            break;
        end
    end
    
    X(i) = Y;
end

hist(X, 30);
lepesekSzama = lepesekSzama / n;
kiertekelesekSzama = kiertekelesekSzama / n;

end

