%% Histogramm mit N = 100'000 und K = 100
N = 100000;
K = 100;
x=randn(N,1);
figure
hist(x,K);

%% Histogramm mit N = 1'000 und K = 100
N = 1000;
K = 100;
x=randn(N,1);
figure
hist(x,K);