close all;
clear;
N = 1024;
f = linspace(-0.5, 0.5, N)';
f_grenz = 0.102;

dw= 1/N;
dt = 2*pi/(N*dw);
t = linspace(-0.5*N, 0.5*N-1, N)';

filterSpektrum = (abs(f) <= f_grenz);

filterZeit = real(ifftshift(ifft(fftshift(filterSpektrum))));

plot(t, filterZeit)


b = 4;
n = 80;
fenster = kaiser(n, b);

filterGefenstert = zeros(N,1);
filterGefenstert(N/2-39:N/2+40) = filterZeit(N/2-39:N/2+40) .* fenster;

plot(filterGefenstert)
filterkern = fftshift(fft(fftshift(filterGefenstert)));

plot(f, 20*log10(filterkern))

