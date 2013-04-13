clear all;
close all;

fa = 8000;
dt = 1/fa;

x = load('HarmNoise01.mat');
x = x.x;
windowlength = 512;
overlap = ceil(windowlength/1.5);
window = kaiser(windowlength, 10);

tic
peakvalue = zeros(100,1);
peakpos = zeros(100,1);
for k = 1:100
    [Pxx, f] = pwelch(x(:, k), window, overlap, fa);
    [peakvalue(k), peakpos(k)] = max(Pxx);
end
toc

% Ausgabe geschätzte Frequenz
mean(peakpos)

figure
subplot(2,1,1); hist(peakpos, 50); title('Histogram of peak position');
subplot(2,1,2); hist(peakvalue, 50); title('Histogram of peak value');
