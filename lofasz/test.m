function [] = test()

X = linspace(0,10,11);
N = [143 690 1472 1871 1514 873 314 102 16 4 1];

IlleszkedesvizsgalatDiszkretTablazat(X,N,'poisson',0.01);


end