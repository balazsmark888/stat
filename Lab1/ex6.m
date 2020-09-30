p=0;
lastP = 0;
lastJump = 0;
limit = 1000000;
figure();
hold on
for n=1:limit
    sum = 0;
    for k=0:floor(13/20*n)

        cnk = nchoosek(n,k);
        sum = sum + 3^k*2^(n-k)/(5^n) * cnk;

    end
    p1 = sum;

    sum = 0;
    for k=n:-1:floor(11/20*n)+1

        cnk = nchoosek(n,k);
        sum = sum + 3^k*2^(n-k)/(5^n) * cnk;

    end
    p2 = sum;
    p = p1 * p2;
    scatter(n,p*100,15,'filled','g');
    drawnow;
    
    
    
    if(lastP >= 0.74 && p > lastP)
        break;
    end
    
    if(p > lastP)
       lastJump = n;
    end
    lastP = p;
end
disp(lastJump);