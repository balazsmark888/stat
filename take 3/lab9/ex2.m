function ex2()

    sigma1 = 4.61;
    sigma2 = 6.86;
    
    X = [353.51; 339.74; 348.23; 345.88; 342.11; 352.54; 351.41; 350.17;343.33; 355.64; 351.75; 348.50; 350.11; 348.69; 341.25; 348.57];
    Y = [348.53; 345.76; 344.40; 362.63; 358.28; 351.54; 343.71; 345.67;349.12; 353.96; 343.34; 338.35];
    
    alpha = 0.07;
    
    [~, ~, ~, ~, H] = UTest2D(X,Y,sigma1,sigma2,alpha,'left');
    if(H == 1)
        disp('A masodik gep tobbet tolt');
    else
        disp('A masodik gep nem tolt tobbet');
    end
end