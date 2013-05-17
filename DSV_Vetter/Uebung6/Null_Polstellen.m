clear all
close all
%% Eingabe Pol und Nullstellen
% Nullstellen:
B_radius = [1/0.9 1/0.9]';
B_freq   = [0.4 -0.4]';
B = poly(B_radius.*exp(j*2*pi*B_freq));

% Polstellen
A_radius = [0.9 0.9]';
A_freq   = [0.4 -0.4]';
A = poly(A_radius.*exp(j*2*pi*A_freq));

%% Darstellung
% Darstellung Null- und Polstellen
figure
zplane(B,A);

% Darstellung Impulsantwort
figure
impz(B,A);

% Darstellung Frequenzgang
figure
freqz(B,A,1024,1);