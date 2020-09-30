function ex3(n)

X = zeros(1, n);

for i=1:n
    time = 0;
    while 1
        tunnel = randi([1,3], 1, 1);
        if tunnel == 1
            time = time + 3;
            break;
        else
            if tunnel == 2
                time = time + 5;
            else
                time = time + 7;
            end
        end
    end
    X(i) = time;

end
mean(X)
sqrt(var(X))
end