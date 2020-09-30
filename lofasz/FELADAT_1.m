function [] = FELADAT_1()

X = [ 499.5 499.7 500.3 498.9 499.5 500.3 501.4 500.2 500.3 500.9 499.9 498.8 500.6 501.5 500.4 499.7 500.2 499.6 500.2 498.5 ];
Y = [ 500.7 502.6 501.8 499.1 500.6 500.7 499.5 498.4 500.9 499.2 498.3 500.4 500.1 499.3 501.2 498.3 500.9 501.5 498.2 ];

[~, ci_std, chi2_value, p_value, H] = Chi2Test(Y, 1.3, 0.01, 'both')
if H == 0
    disp('A 2. gep hibaja annyi.');
else
    disp('A 2. gep hibaja NEM annyi.');
end

[~, ci_delta, u_value, p_value, H] = UTest2D(X, Y, 0.78, 1.3, 0.02, 'right')
if H == 0
    disp('Az 1. gep NEM allit elo hosszabb csoveket, mint a 2. gep.');
else
    disp('Az 1. gep hosszabb csoveket allit elo, mint a 2. gep.');
end

end

