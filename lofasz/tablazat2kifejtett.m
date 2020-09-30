function X = tablazat2kifejtett(xi, Ni)

if length(xi) ~= length(Ni)
    error('xi, Ni size not matching!');
end

X = zeros(1, sum(Ni));
k = 1;

for i = 1 : length(Ni)
    for j = 1 : Ni(i)
        X(k) = xi(i);
        k = k + 1;
    end
end

end

