%% Vorbereitung
fa = 1000;
f0 = 100;
N = 1000;
df = fa/N;

t = [0:N-1]'/fa;

%% Signale

x = sin(2*pi*f0*t);               % Sinus

% x = cos(2*pi*f0*t);               % Cosinus

for i=1:length(t)                 % Rechteck
    x(i) = mod(i, 40)<9;
end
% x = x';

% x = [1E3 zeros(1, length(t)-1)]';	% Dirac

%% DFT mit forschleife
for k = 0:N-1
    gf = exp(-1i*2*pi*k*df*t);
    Xf(k+1)= x'*gf/N;
end

%% DFT mit Matrixoperation
k = 0:N-1;
gf = exp(-1i*2*pi*df*t*k);
Xf = x'*gf/N;

%% Darstellung
Xf = fftshift(Xf);

subplot(2,1,1); plot([-N/2:N/2-1]*df, 20*log10(abs(Xf)));
xlabel('Frequenz [Hz]');
ylabel('Amplitude [dB]');

subplot(2,1,2); plot([-N/2:N/2-1]*df, 180/pi*(angle(Xf)));
xlabel('Frequenz [Hz]');
ylabel('Phase [deg]');