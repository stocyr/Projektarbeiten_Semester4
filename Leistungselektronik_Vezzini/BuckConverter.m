%% Diagrammbereich
Vin = 12:75;
V0  = 10:30;
I0  = 1:10;

%% Schaltungsspezifikationen
f = 80000;

%% Bauteilspezifikationen
Vf0 = 0.2;          % Diode Vorwärtsspannung
R0  = 0.033;        % Verlustwiderstand Schottkydiode
Rdson = 0.0033;     % Verlustwiderstand MOSFET
Rl  = 0.01;         % Verlustwiderstand Drossel
Rsh = 0.01;         % Schöntwiderstand

%% Schaltverluste
% todo

%% Berechnung Duty Cycle
% Berechnung mit Matrix
%D = (kron(V0,ones(length(I0),1)) + kron(((Rl + R0).*I0)',ones(1,length(V0)))) / (kron(Vin,ones(length(I0),1))  -kron(((Rdson + Rsh - R0).*I0 + Vf0)', ones(1,length(Vin))));
% PROBLEM: kron funktioniert nur mit 2D

% Berechnung mit For-Schlaufe
D = zeros(length(I0), length(V0), length(Vin));  % memory allocation
for I0_k = I0
    for V0_k = V0
        for Vin_k = Vin
            D(find(I0 == I0_k),find(V0 == V0_k),find(Vin == Vin_k)) = (V0_k + (Rl + R0) * I0_k + Vf0) / (Vin_k - (Rdson + Rsh - R0) * I0_k + Vf0);
        end
    end
end

%% Berechnung Eingangsstrom
Iin = zeros(size(D));    % memory allocation
for I0_k = I0
   Iin(find(I0 == I0_k),:,:) = D(find(I0 == I0_k),:,:) * I0_k;
end

%% Berechnung Eingangsleistung
Pin = zeros(size(Iin));	% memory allocation
for Vin_k = Vin
   Pin(:,:,find(Vin == Vin_k)) = Iin(:,:,find(Vin == Vin_k)) * Vin_k;
end

%% Berechnung Leitverluste
Pv = zeros(size(Pin));  % memory allocation
%Pv = ...*D % Leitverluste:
%           MOSFET (*D)     --> Rdson * I_DRMS^2
%                           --> Uf * If + Rd * If^2 (für antiparallele Diode des Mosfets)
%           
%           Diode (* 1-D)   --> Ufd * Ifd + Rd * Ifd^2
%           Shunt (immer)   --> I
%           R drossel (immer)
Pin_tot = Pin + Pv;

%% Berechnung Schaltverlustleistung
% MOSFET application note
% aus DB 
% UDD = Spannung über MOSFET = Vin (maximal)
% UDR = Driver voltage = 10V (gewählt)
% Gatewiderstand = 1.6 OHM (gewählt)
% Zeiten berechnen: TFU 1/2 und TRU (Vplateau = 4.3V), TRise und TFall (aus datenblatt - 58 / 28)
% Energien berechnen für EonM und EoffM (NICHT die Diodenleistungen, da schottkydiode)
% Diese mit Schaltfrequenz multiplizieren

%% Addition zu Eingangsleistung

%% Berechnung Ausgangsleistung
Pout = zeros(size(D));  % memory allocation

for I0_k = I0
    for V0_k = V0
        Pout(find(I0 == I0_k),find(V0 == V0_k),:) = I0_k * V0_k;
    end
end

%% Berechnung Wirkungsgrad
% Wirkungsgrad berechnen und 3D-Matrix dann so drehen (Dimensionen
% vertauschen), dass I0 die 3. Dimension ist. So kann ich mir ein I0
% wählen und erhalte dann eine MxN Matrix. Diese kann man dann z.B. mit
% surf(n(:,:,1)) (hier wird einfach der 1. der I0-Ströme gewählt) plotten.
% Es ist natürlich ebenfalls möglich, ein Konturliniendiagramm zu plotten
% mit contour(n(:,:,1)).
n = permute(Pout ./ Pin, [2 3 1]);

%% Darstellung
% Konturliniendiagramm von jedem I0 erstellen und alle in einem Film
% zusammenfassen. Diesen dann 1x mit FPS = 3 abspielen
for I0_k = I0
   contourf(n(:,:,find(I0 == I0_k)));
   %surf(n(:,:,find(I0 == I0_k)));
   axis equal
   M(find(I0 == I0_k)) = getframe;
   
   pause
end

movie(M,1,3);

%% Darstellung Duty Cycle
% D = permute(D, [2 3 1]);
% for I0_k = I0
%    contour(D(:,:,find(I0 == I0_k)));
%    %surf(D(:,:,find(I0 == I0_k)));
%    axis equal
%    M(find(I0 == I0_k)) = getframe;
% end
% 
% movie(M,10,10);