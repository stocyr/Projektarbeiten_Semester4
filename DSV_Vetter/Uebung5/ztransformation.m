% close all;
% clear all;

% Gleitender Mittelwert
h = [1 1 1 1 1 1 1 1 1 1]';

% Kaiserf�rmige Impulsantwort
%h = kaiser(100, 10);
%h = h(end/2:end);

% Eigene freqz implementation
Nf = 1024;
f = [0:1/Nf:1/2];
z = exp(j*2*pi*f);
H = zeros(size(f));
for n = 1:length(h)
    H = H + h(n)*z.^-(n-1);
end

G = freqz(h);

subplot(2,2,[1 3]);
stem(h, 'linewidth', 2);
set(gca, 'ylim', [-1.1 1.1], 'xlim', [0.9 10.1]);
title('Impulsantwort im Zeitbereich');
grid on

subplot(2,2,2);
semilogx(20*log(abs(H)), 'linewidth', 2);
set(gca, 'ylim', [-100 max(abs(H)*20)+10]);
xlabel('Frequenz [Hz]');
ylabel('Gain [dB]');
title('Frequenzgang des Filters');
grid on
hold all
semilogx(20*log(abs(G)), 'linewidth', 2);

subplot(2,2,4);
semilogx(angle(H)*180/pi, 'linewidth', 2);
ylabel('Phase [�]');
xlabel('Frequenz [Hz]');
grid on
hold all
semilogx(angle(G)*180/pi, 'linewidth', 2);
