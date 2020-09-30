function [] = FELADAT_2()

% DISZKRET!!!
xi = 0 : 9;
Ni = [ 481 1798 3190 3305 2082 858 232 46 7 1 ];

% HA VAN (VAGY NINCS) SZAKADEK, AKKOR BE KELL ALLITANI A FILEOKBAN!!!
IlleszkedesvizsgalatDiszkretTablazat(xi, Ni, 'binomial', 0.01);

end

