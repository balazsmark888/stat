function [] = FELADAT_3()

% EGZAKT INVERZIOS MODSZER
U = UMersenneTwisterRNG(1, 100000);
X = sqrt(-pi .* log(U));

varhatoErtek = mean(X)
szoras = sqrt(var(X)) % [SZORAS], NEM [SZORAS^2] !!!

end

