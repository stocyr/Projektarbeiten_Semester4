close all;
clear;
N = 1024;
f = linspace(-0.5, 0.5, N)';
f_grenz_filtering = 0.102;
f_grenz_soll = 0.1;

dw= 1/N;
dt = 2*pi/(N*dw);
t = linspace(-0.5*N, 0.5*N-1, N)';

filterSpektrum = (abs(f) <= f_grenz_filtering);

filterZeit = real(ifftshift(ifft(fftshift(filterSpektrum))));

plot(t, filterZeit)


b = 4;
n_fenster = 80;
fenster = kaiser(n_fenster, b);

filterGefenstert = zeros(N,1);
filterGefenstert(N/2-(n_fenster/2-1):N/2+n_fenster/2) = filterZeit(N/2-39:N/2+40) .* fenster;

plot(filterGefenstert)
filterkern = fftshift(fft(fftshift(filterGefenstert)));

plot(f, 20*log10(filterkern))

%% Filterqualität beurteilen aufgrund der Bandspezifikationen
%ripple_durchlassband = 20*log10(filterkern(find(f == f_grenz_soll)))
%daempfung_stopband = 20*log10(filterkern(find(f == f_grenz_soll + 0.1)))

% geht nicht aus folgenden gründen:
% 1. es existiert kein frequenz-y-vektor-element mit exakt dem wert 0.1
% 2. beim stopband ist der erste nebenlappen nicht bei genau 0.2