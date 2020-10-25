function ex4

figure

    n = 5000;
    subplot(2,1,1);
    hist(Poisson(5,n));
    title('Poisson 5');

    subplot(2,1,2);
    hist(Csonkolas('geometrial',2/3,n));
    title('Csonkolas geo 2/3');
end