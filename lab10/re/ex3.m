function ex3()

    X = [25.18; 24.40; 25.40; 24.58; 25.30; 26.00; 24.57; 25.38; 23.58; 25.35; 24.50; 26.47; 24.58; 24.27; 24.48; 26.01; 25.50; 26.52; 24.46];
    Y = [25.01; 22.29; 23.55; 25.00; 24.48; 25.00; 23.17; 22.38; 23.18; 25.00; 24.52; 24.37; 22.28; 24.57; 23.48; 26.01; 25.31; 25.02; 24.26];
    
    alpha = 0.03;
    
    [~, ~, ~, ~, H] = TTest2D(X, Y, 0, alpha, 'both');
    
    if(H == 0)
        disp('A ket gep varhato gyartasi ideje egyenlo');
    else
        [~, ~, ~, ~, H] = TTest2D(X, Y, 0, alpha, 'right');
        if(H == 1)
            disp('Az elso gep varhato gyartasi ideje nagyobb');
        else
            disp('A masodik gep varhato gyartasi ideje nagyobb');
        end
    end

end