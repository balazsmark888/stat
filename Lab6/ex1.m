[X1,X2] = Marsaglia(1000);
subplot(2,2,1);
plot(X1,X2,'.r');
X = zeros(1000,2);
X(:,1) = X1(1,:);
X(:,2) = X2(1,:);
subplot(2,2,2);
hist3(X);
[X1,X2] = Korrelalt(0,-1,1,1,1,1000);
subplot(2,2,3);
plot(X1(1,:),X1(2,:),'.r');
subplot(2,2,4);
hist3(X1');