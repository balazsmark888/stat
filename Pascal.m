function X = Pascal (m, p, n)

  X = zeros(1,n);

  for k = 1:n
    U = UMersenneTwisterRNG();
    i = 0;
    pn = p^m;
    hatv = 1;
    S = nchoosek(m+i-1, i) * pn * hatv;

    while (U > S)
      i = i+1;
      hatv = hatv * (1-p);
      S = S + nchoosek(m+i-1, i) * pn * hatv;
    end

    X(k) = i;
  end
    
end
