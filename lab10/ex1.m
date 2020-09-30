X = [884 878 897 870 887 879 850 875 882 870 882 840 851 881 900 890 877 861 893 879 891 882 869];
alpha = 0.04;
mu_0 = 870;
[ci_t, ci_mu, t_value, p_value, H] = TTest(X,mu_0,alpha,'left');
if(~H)
    disp('Chance!');
else
    disp('No chance!');
end