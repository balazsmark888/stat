X = [98.2 99.6 100.1 100.4 99.2 99.8 99.6 99.5 98.7 99.8 100.2 98.7 100.3 99.7 100 99.8];
Y = [98.5 96.8 100.3 97.9 99.3 100.5 100.2 99.4 98.7 98 99.3 98.1 97.5 100.3 96.5];

alpha = 0.03;
mu_0 = 100;

[ci_u1, ci_mu1, u_value1, p_value1, H1] = TTest(X,mu_0,alpha,'both');
[ci_u2, ci_mu2, u_value2, p_value2, H2] = UTest(Y,mu_0,false,alpha,'both');

if(~H1)
    disp('Az elso cukrasz altal sutott kiflik atlagos tomege 100g');
else
    disp('Az elso cukrasz altal sutott kiflik atlagos tomege nem 100g');
end
if(~H2)
    disp('A masodik cukrasz altal sutott kiflik atlagos tomege 100g');
else
    disp('A masodik cukrasz altal sutott kiflik atlagos tomege nem 100g');
end

[ci_u, ci_delta, u_value, p_value, H] = TTest2D(X,Y,false,alpha,'right');

if(H)
    disp('Az elso cukrasz nyert!');
else
    [ci_u, ci_delta, u_value, p_value, H] = UTest2D(X,Y,false,alpha,'left');
    if(H)
        disp('A masodik cukrasz nyert');
    else
        disp('Dontetlen');
    end
end
