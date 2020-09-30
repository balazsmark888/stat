sigma = 1;
mu = 2;
subplot(2,1,1);
X = rej4(5000) .* sigma + mu;
hist(X);
X = rej5(5000) .* sigma + mu;
subplot(2,1,2);
hist(X);