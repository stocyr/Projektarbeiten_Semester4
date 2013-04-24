%% Diagrammbereich
Vin = 12:75;
V0  = 10:30;
I0  = 1:10;

%% Schaltungsspezifikationen
f = 80000;

%% Bauteilspezifikationen
% Diodenmodell:
% Diode = NTST20120CT
x1 = 0.4; y1 = 1; x2 = 0.88; y2 = 10;
dx = x2-x1; dy = y2-y1;
a = dy/dx;
b = y1 - a*x1;
Vf0 = -b/a;         % Diode Vorw�rtsspannung (wurst-k�se szenario)
RDiodeLinear = a;
R0  = 0.033;        % Verlustwiderstand Schottkydiode (angenommen)

% MOSFET-Modell
% MOSFET = IPB027N10N3
Rdson = 0.0027;     % Verlustwiderstand MOSFET - aus DB (Driver Voltage = 10V)

Rl  = 0.01;         % Verlustwiderstand Drossel
Rsh = 0.01;         % Sch�ntwiderstand

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
Pl = zeros(size(Pin));  % memory allocation
Pl_MOSFET = Iin.^2.*D*Rdson;
Pl_MOSFET_Diode = 0*Iin.*(1-D);     % vernachl�ssigt (Uf * If + Rd * If^2)
Pl_Diode = (1-D).*I0*Vf0;           % Modell: Vf0*I0 + RDiodeLinear*I0.^2;
%           Shunt (immer)   --> I
%           R drossel (immer)

%% Berechnung Schaltverlustleistung
% MOSFET application note
% aus DB 
% UDD = Spannung �ber MOSFET = Vin (maximal)
% UDR = Driver voltage = 10V (gew�hlt)
% Gatewiderstand = 1.6 OHM (gew�hlt)
% Zeiten berechnen: TFU 1/2 und TRU (Vplateau = 4.3V), TRise und TFall (aus datenblatt - 58 / 28)
% Energien berechnen f�r EonM und EoffM (NICHT die Diodenleistungen, da schottkydiode)
% Diese mit Schaltfrequenz multiplizieren

%% Addition zu Eingangsleistung
Pin_tot = Pin + Pl + Ps;

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
% w�hlen und erhalte dann eine MxN Matrix. Diese kann man dann z.B. mit
% surf(n(:,:,1)) (hier wird einfach der 1. der I0-Str�me gew�hlt) plotten.
% Es ist nat�rlich ebenfalls m�glich, ein Konturliniendiagramm zu plotten
% mit contour(n(:,:,1)).
n = permute(Pout ./ Pin, [2 3 1]);

%% Darstellung
% Konturliniendiagramm von jedem I0 erstellen und alle in einem Film
% zusammenfassen. Diesen dann 1x mit FPS = 3 abspielen
for I0_k = I0
   contourf(n(:,:,find(I0 == I0_k)));
   xlabel('V_{in}');
   ylabel('V_{out}');
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