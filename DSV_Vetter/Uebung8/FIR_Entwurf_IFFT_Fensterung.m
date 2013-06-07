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

plot(f, filterSpektrum, 'linewidth', 3)
grid on
title('Soll-Filterform im Spektrum');
xlabel('Normierte Frequenz');

filterZeit = real(ifftshift(ifft(fftshift(filterSpektrum))));

figure
plot(t, filterZeit)
grid on
title('Filter im Zeitbereich');
xlabel('Samples');


b = 4;
n_fenster = 80;
fenster = kaiser(n_fenster, b);

filterGefenstert = zeros(N,1);
filterGefenstert(N/2-(n_fenster/2-1):N/2+n_fenster/2) = filterZeit(N/2-39:N/2+40) .* fenster;

figure
plot(filterGefenstert)
grid on
title('Filter im Zeitbereich (mit Nullen ergänzt)');
xlabel('Samples');

filterkern = fftshift(fft(fftshift(filterGefenstert)));

figure
plot(f, 20*log10(filterkern))
grid on
title('Filter im Spektrum');
xlabel('Genormte Frequenz');
ylabel('dB');

% Überprüfung des Spektrums mit der internen Funktion Freqz
figure
freqz(filterGefenstert, 1, 1024, 1)
title('Filter im Spektrum (mit freqz');

%% Filterqualität beurteilen aufgrund der Bandspezifikationen
ripple_durchlassband = min(real(20*log10(filterkern(find(abs(f) <= f_grenz_soll)))))
daempfung_stopband = max(real(20*log10(filterkern(find(abs(f) >= f_grenz_soll + 0.1)))))