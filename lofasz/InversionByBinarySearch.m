function sample = InversionByBinarySearch(X, uniform_rng, count)

% input checking
[row_count, column_count] = size(X);

if (row_count ~= 2)
    error('Wrong input discrete random variable!');
end

for j = 1:column_count
    if (X(2,j) < 0 || X(2,j) > 1)
        error('Wrong input discrete random variable!');
    end
end

total_probability = sum(X(2,:));
if (total_probability > 1)
    error('Wrong input discrete random variable!');
end

% assume accumulated errors
if (total_probability < 1)
    X(2, column_count) = 1 - sum(X(2, 1:column_count-1));
end

% calculate cumulative probabilities
cumulative_probabilities = cumsum(X(2,:));

% allocate memory
sample = zeros(1, count);

% perform sequential searching(*@\footnote{\textbf{to search} \emph{keresni}; \textbf{sequential $\sim$ing} \emph{szekvenciális keresés}}@*)
for k = 1:count
    
    switch (uniform_rng)
        case {'LEcuyer', 1}
            u = ULEcuyerRNG();

        case {'MersenneTwister', 2}
            u = UMersenneTwisterRNG();

        otherwise
            u = rand();
    end
    
    b = 1;
    j = column_count;
    
    while(true)
        if j - b == 1
            break;
        end
        
        m = floor((b + j) / 2);
        
        if u == cumulative_probabilities(m)
            b = m;
            j = m;
        elseif u > cumulative_probabilities(m)
            b = m;
        else
            j = m;
        end
    end
    
    if cumulative_probabilities(b) > u
        index = b;
    else
        index = j;
    end
    
    sample(k) = X(1, index);
end

