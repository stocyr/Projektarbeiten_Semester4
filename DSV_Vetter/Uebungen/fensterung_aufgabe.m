clear all;
close all;
grid on;

N = 50;                             % "Zeitvektor" mit 50 Samples
n = 0:N-1;
NFFT = 10*N;

f0 = 1;                             % Grundfrequenz zum Normieren

x1 = sin(2*pi*0.07*f0*n);           % Harmonisches Signal mit 0.07Hz
x2 = 100*100*sin(2*pi*0.27*f0*n);       % Harmonisches Signal mit 0.27Hz und 40dB grösser als das andere

x = x1 + x2;

% Mit Rechteckfenster
xrect = x.*rectwin(N)';
xhann = x.* hamming(N)';
xkais = x.* kaiser(N, 10)';


% Signal in den Spektralbereich transformieren
X1 = fftshift(fft(xrect, NFFT));             
X2 = fftshift(fft(xhann, NFFT));
X3 = fftshift(fft(xkais, NFFT));

                                    
% Signale darstellen
hold all;      
plot([-NFFT/2:NFFT/2-1], 20*log10(abs(X1))); 
plot([-NFFT/2:NFFT/2-1], 20*log10(abs(X2)));
plot([-NFFT/2:NFFT/2-1], 20*log10(abs(X3)));



h = line([0.07*f0*NFFT 0.07*f0*NFFT], ylim);
h = [h line([-0.07*f0*NFFT -0.07*f0*NFFT], ylim)];
h = [h line([0.27*f0*NFFT 0.27*f0*NFFT], ylim)];
h = [h line([-0.27*f0*NFFT -0.27*f0*NFFT], ylim)];
set(h, 'LineStyle', '--', 'Color', [0.8 0.8 0.8]);


legend('Rectwin', 'Hamming', 'Kaiser');
xlabel('Frequenz [Hz]');
ylabel('Amp [dB]');

