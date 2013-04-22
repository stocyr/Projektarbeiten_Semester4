%% Digitale Faltung

close all;
clear all;

% X-Vektor
% x = [1 0 1 0 1 0 1 0 1 ]';
% Dirac
x = [1 0 0 0 0 0 0]';

% Auswahl an �bertragungsfunktionen
% g = [1 -1]';
% g = [1 1]';
% g = [1 0 0 0 0 1]';

g = [1 -0.9 0.8 -0.7 0.6 -0.5 0.4 -0.3 0.2 -0.1 0]';  


N = length(x);
p = length(g)-1;
y = zeros(1,N+p);

% Zeropadding
x_zp = [zeros(1, p) x' zeros(1, p)]';

% Berechnung der Faltung f�r alle Stellen
for n = p+1:N+2*p;
    phi_n = x_zp(n:-1:n-p);
    y(n-p) = g'*phi_n;
end

% Kontrolle mit Matlabfunktion (Parameter f�r Fkt sind: 'full', 'valid', 'same')
y_k = conv(x, g, 'full');


% Ausgabe an Konsole
disp('Eigene Fkt.: '); y
disp('Matlab Fkt.: '); y_k'

% Darstellung der Kurve
plot(x);
hold all;
stairs(y);
stairs(y_k);

legend('Eingangssignal', ['Gefaltet mit [',num2str(g') ,']'], 'Faltung mit conv');