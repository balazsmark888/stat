X = [39.7 38.7 37.9 38.8 39.7 39.8 38.2 38.6 38.8 39.0 38.5 38.2 37.6];
Y = [39.6 37.2 36.8 37.9 38.2 38.8 38.0 38.3 37.8 37.9 37.6 38.4 37.8];

alpha = 0.02;

[ci_u, ci_delta, u_value, p_value, H] = TTest2D(X,Y,false,alpha,'right');

if(H)
    disp('It works!');
else
    disp('It doesnt work!');
end