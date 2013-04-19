%% Digitale Faltung

close all;
clear all;

% x = [1 0 1 0 1 0 1 0 1]';
x = [0 1 2 3 4 5 6 0 0 0 0 0]';

g = [1 -1]';

N = length(x);
p = length(g)-1;
y = zeros(1,N);


for n = p+1:N;
    phi_n = x(n:-1:n-p);
    y(n) = g'*phi_n;
end

plot(x);
hold all;
stairs(y);
legend('Eingangssignal', 'Ableitung durch Falten mit [1 -1]');