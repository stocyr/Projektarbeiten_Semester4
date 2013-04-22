%% Digitale Faltung

close all;
clear all;
t = 0:0.01:2*pi;
% x = [1 0 1 0 1 0 1 0 1]';
% x = [0 1 2 3 4 5 6 0 0 0 0 0]';
x = sin(t)';
% g = [1 -1]';
% g = [1 1]';
g = [1 0 0 0 0 1]';


N = length(x);
p = length(g)-1;
y = zeros(1,N);


for n = p+1:N;
    phi_n = x(n:-1:n-p);
    y(n) = g'*phi_n;
end

% Kontrolle mit Matlabfunktion
y_k = conv(x, g, 'same');



disp('Eigene Fkt.: '); y
disp('Matlab Fkt.: '); y_k'
plot(x);
hold all;
stairs(y);

legende = int2str(g');
legend('Eingangssignal', 'Ableitung durch Falten mit ['legende ']');