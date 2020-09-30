function x = ex5(n)
blood = [1 2 3 4;50/200 65/200 70/200 15/200];
x = 0;
for i = 1:n
    seq = InversionBySecventialSearch(blood,1);
    ind = 1;
    while(seq ~= 2 && seq ~= 3)
        seq = InversionBySecventialSearch(blood,1);
        ind = ind+1;
    end
    x = x + ind;
end
x = x/n;
end