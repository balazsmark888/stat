function [] = ex4()

%c1: (x-5)^2 + y^2 = 25
%c2: (x - 6)^2 + (y - 6)^2 = 9


n = 100000;

X = zeros(1,n);
Y = zeros(1,n);

for i=1:n
   
    x = UMersenneTwisterRNG() * 15;
    y = UMersenneTwisterRNG() * 12;
    
    d1 = mysign(x,y,0,0,15,0);
    d2 = mysign(x,y,15,0,0,12);
    d3 = mysign(x,y,0,12,0,0);
    
    has_neg = (d1 < 0) || (d2 < 0) || (d3 < 0);
    has_pos = (d1 > 0) || (d2 > 0) || (d3 > 0);
    
    if(has_neg && has_pos)
        i = i - 1;
    else
        X(i) = x;
        Y(i) = y;
    end
    
end

c = 0;
    
for i = 1:n
    
    if((X(i) - 5)^2 + Y(i)^2 > 25 && (X(i) - 6)^2 + (Y(i) - 6) ^ 2 > 9)
        c = c+1;
    end
    
end
    
c / n

end