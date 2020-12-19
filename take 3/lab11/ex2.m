function ex2()

    X = [70.80; 72.98; 73.48; 75.42; 71.65; 73.68; 70.22; 72.25; 70.91; 72.61; 69.7; 72.37; 71.84; 68.13; 71.12; 68.41; 72.21; 73.44; 77.17; 70.67];
    Y = [71.32; 79.27; 74.06; 72.31; 75.59; 67.10; 66.65; 69.90; 75.39; 69.32; 74.40; 71.51; 68.98; 75.45; 69.35; 70.83; 74.75; 71.31; 73.75; 66.87];
    alpha = 0.06;

    [~, ~, ~, ~, H] = FTest2D(X, Y, alpha, 'both');
    
    if(H == 0)
        disp('A muszerek azonos hibaval dolgoznak');
    else
        disp('A muszerek nem dolgoznak azonos hibaval');
    end
    
    alpha = 0.02;
    
    [~, ~, ~, ~, H2] = TTest2D(X, Y, ~H, alpha, 'right');
    if(H2 == 1)
        disp('A masodik muszer atlagos zajszint erteke alacsonyabb');
    else
        disp('A masodik muszer atlagos zajszint erteke nem alacsonyabb');
    end
    
end