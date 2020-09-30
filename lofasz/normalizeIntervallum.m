function xi = normalizeIntervallum( intervallum )

n = length(intervallum);
xi = zeros(1, n/2);

for i = 1 : (n/2)
    xi(i) = (intervallum(2*i-1) + intervallum(2*i)) / 2;
end

end

