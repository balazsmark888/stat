d  = 10;
% c1: x^2 + (y-5)^2 = 25;
% c2: (x-5)^2 + y^2 = 25;
count = 10000;
seed = 31231;

[X,value] = URealRNG(seed,2,0,10,count);
[Y,value] = URealRNG(value,2,0,10,count);

rectangle('Position',[1,1,10,10]);
axis([0 12 0 12]);
hold on;
n=0;

for i = 1:count
    if(X(i)^2 + (Y(i)-5)^2 > 25 && (X(i)-5)^2 + Y(i)^2 > 25)
        plot(X(i)+1,Y(i)+1,'r.')
        n = n+1;
    else
        plot(X(i)+1,Y(i)+1,'b.')
    end
end

disp(n/count);