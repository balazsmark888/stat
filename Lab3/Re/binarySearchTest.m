function binarySearchTest()

figure
    X = [1 2 3 4 5 6 7 8 9 10 ; 1/2 1/4 1/8 1/16 1/32 1/64 1/128 1/256 1/512 1/512];
    n = 100000;

    tic;
    subplot(2,1,1);
    hist(InversionBySequentialSearch(X,n));
    title('Secvential search');
    toc
    
    tic;
    subplot(2,1,2);
    hist(InversionByBinarySearch(X,n));
    title('Binary search');
    toc

end