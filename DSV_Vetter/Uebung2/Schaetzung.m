x = randn(1000, 1);
x = x - mean(x);
N = length(x);

%% Variante For-Schleife
varianz = 0;
for i = 1 : N
    varianz = varianz + x(i)^2;
end
varianz = varianz/N;
disp('for schleife: ');
disp(varianz);

%% Variante Skalarprodukt
varianz = x'*x/N;
disp('Skalarprodukt: ');
disp(varianz);

%% Variante Matlab funktion
varianz = var(x);
disp('Matlab funktion: ');
disp(varianz);