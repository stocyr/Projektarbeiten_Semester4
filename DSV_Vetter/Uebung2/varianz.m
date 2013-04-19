%% Startbedingungen
N = 1000;
x = 10 * randn(N, 1);
 
%% Variante For-Schleife
var_x = 0;
for i = 1 : N
    var_x = var_x + x(i)^2;
end
var_x = var_x / N;
disp(['Varianz mit For-Loop: ' num2str(var_x)]);
disp(['Varianz mit ''var'': ' num2str(var(x))]);
 
%% Variante Skalarprodukt
var_x = x'*x/N;
 
disp(['Varianz mit Skalarprodukt: ' num2str(var_x)]);
disp(['Varianz mit ''var'': ' num2str(var(x))]);
