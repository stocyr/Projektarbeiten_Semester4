%% Initialisieren
clear all;
display('Starting calculation of efficiency factor...');

%% Diagrammbereich
Vin = 12:75;
V0  = 10:30;
I0  = 1:10;

%% Schaltungsspezifikationen
f = 80000;          % Schaltfrequenz

Udr = 10;           % Driver Voltage - 10V gewählt, damit wird der MOSFET gesteuert (übersteuert da im Schalterbetrieb)

%% Bauteilspezifikationen
% Diodenmodell:
% Diode = NTST20120CT
x1 = 0.4; y1 = 1; x2 = 0.88; y2 = 10;
dx = x2-x1; dy = y2-y1;
a = dy/dx;
b = y1 - a*x1;
Vf0 = -b/a;         % Diode Vorwärtsspannung (wurst-chäs Szenario)
RDiodeLinear = a;
R0  = 0.033;        % Verlustwiderstand Schottkydiode (angenommen)

% MOSFET-Modell
% MOSFET = IPB027N10N3
Rdson = 0.0027;     % Verlustwiderstand MOSFET - aus DB (Driver Voltage = 10V)
Rg = 1.9;           % Gatewiderstand MOSFET - aus DB
tri = 58*10^(-9);   % Strom Risetime
tfi = 28*10^(-9);   % Strom Falltime
Cgd1 = 40*10^(-12); % Gate-drain capacitance 1
Cgd2 = 1.15*10^(-9);% Gate-drain capacitance 2
Uplateau = 4.3;     % Gate Plateau Voltage - aus DB
% MOSFET Reverse Diode
Vf0_MFET = 0.6;
RdiodeMFET = (0.75-0.6)/(10-1);

L = 0.01;            % Zufälliger Wert für die Drossel angenommen
Rl  = 0.01;         % Verlustwiderstand Drossel
Rsh = 0.01;         % Schöntwiderstand

%% Berechnung mit Matrix
[Vin_grid,V0_grid,I0_grid] = meshgrid(Vin, V0, I0);

%% Berechnung Duty Cycle
D = (V0_grid + (Rl + R0) * I0_grid + Vf0) ./ (Vin_grid - (Rdson + Rsh - R0) * I0_grid + Vf0);
% "unmögliche" Konfigurationen (V0 > Vin) auslöschen
% D = D .* (V0_grid < Vin_grid);

for I0_k = I0
    for V0_k = V0
        for Vin_k = Vin
            if V0_k > Vin_k
                D(find(V0 == V0_k),find(Vin == Vin_k),find(I0 ==I0_k)) = NaN;
            end
            if D(find(V0 == V0_k),find(Vin == Vin_k),find(I0 ==I0_k))>1
                D(find(V0 == V0_k),find(Vin == Vin_k),find(I0 ==I0_k)) = NaN;
            end
        end
    end
end

%% Berechnung Eingangsstrom
Iin = D .* I0_grid;

%% Berechnung Eingangsleistung
Pin = Iin .* Vin_grid;

%% Berechnung Leitverluste
Pl_MOSFET = Iin.^2 .* D * Rdson;
Pl_MOSFET_Diode = Vf0_MFET * I0_grid .* (1-D) + RdiodeMFET * I0_grid.^2 .* (1-D); % Leistung durch Antiparallele Diode (Uf * If + Rd * If^2)
Pl_Diode = (1-D) .* I0_grid * Vf0;	% Modell: Vf0*I0 + RDiodeLinear*I0.^2;
Pl_Shunt = Rsh * I0_grid.^2;        % Shunt (immer)   --> I
Pl_Drossel = Rl * I0_grid.^2;       % R drossel, nur Wirkleistung beachtet (immer)
Pl = Pl_Drossel + Pl_Shunt + Pl_Diode + Pl_MOSFET_Diode + Pl_MOSFET;
%% Berechnung Schaltverlustleistung
% MOSFET application note
% aus DB 
% UDD = Spannung über MOSFET = Vin (maximal)
% UDR = Driver voltage = 10V (gewählt)
% Gatewiderstand = 1.6 OHM (gewählt)
% Zeiten berechnen: TFU 1/2 und TRU (Vplateau = 4.3V), TRise und TFall (aus datenblatt - 58 / 28)
% Energien berechnen für EonM und EoffM (NICHT die Diodenleistungen, da schottkydiode)
% Diese mit Schaltfrequenz multiplizieren

Udd = V0_grid;                           % Udd ist maximale Spannung über dem MOSFET = V in

dI = ((1-D).*V0_grid)/(L*f);              % Rippel in der Dorssel berechnen

Idon = I0_grid - dI/2;
Idoff = I0_grid + dI/2;

tfu1 = (Udd-Rdson*Idon)*Rg*(Cgd1/(Udr-Uplateau));   % Voltage falltime 1
tfu2 = (Udd-Rdson*Idon)*Rg*(Cgd2/(Udr-Uplateau));   % Voltage falltime 2
tfu = (tfu1 + tfu2)/2;                              % Totoal Voltage falltime 

tru1 = (Udd-Rdson*Idon)*Rg*(Cgd1/(Udr));            % Voltage risetime 1
tru2 = (Udd-Rdson*Idon)*Rg*(Cgd2/(Udr));            % Voltage risetime 2
tru = (tru1 + tru2)/2;                              % Totoal Voltage risetime 

Eon_MOSFET = Udd.*Idon.*(tri+tfu)/2;                  % Switch on Energy
Eoff_MOSFET = Udd.*Idoff.*(tru+tfi)/2;                % Switch off Energy

Ps_MOSFET = (Eon_MOSFET + Eoff_MOSFET)*f;           % MOSFET Switching Losses
Ps = Ps_MOSFET;
%% Addition von zu Eingangsleistung
Pin_tot = Pin + Pl + Ps;

%% Berechnung Ausgangsleistung
Pout = I0_grid .* V0_grid;
%% Berechnung Wirkungsgrad
% Wirkungsgrad berechnen und 3D-Matrix dann so drehen (Dimensionen
% vertauschen), dass I0 die 3. Dimension ist. So kann ich mir ein I0
% wählen und erhalte dann eine MxN Matrix. Diese kann man dann z.B. mit
% surf(n(:,:,1)) (hier wird einfach der 1. der I0-Ströme gewählt) plotten.
% Es ist natürlich ebenfalls möglich, ein Konturliniendiagramm zu plotten
% mit contour(n(:,:,1)).
n = Pout ./ Pin;

%% "unmögliche" Konfigurationen (V0 > Vin) auslöschen
n = n .* (V0_grid < Vin_grid);

%% Darstellung
display('Efficiency factor calculation completed.');
display('Drawing and saving of graph plots in progress...'); 

% D-Matrix anzeigen
D_offset = zeros(max(V0), max(Vin), max(I0));
D_offset(:,:,:) = NaN;
D_offset(min(V0):max(V0), min(Vin):max(Vin), min(I0):max(I0)) = D;
figure
surf(D_offset(:,:,10));
colorbar;
set(gca, 'xlim', [min(Vin) max(Vin)], 'ylim', [min(V0) max(V0)]);
title(['Duty Cycle bei I0 = 10A']);
ylabel('Ausgangsspannung [V]');
xlabel('Eingangsspannung [V]');
zlabel('Duty Cycle (t_{on} / T)');

% Rippel anzeigen
figure
dI_offset = zeros(max(V0), max(Vin), max(I0));
dI_offset(:,:,:) = NaN;
dI_offset(min(V0):max(V0), min(Vin):max(Vin), min(I0):max(I0)) = dI;
surf(dI_offset(:,:,10));
colorbar;
set(gca, 'xlim', [min(Vin) max(Vin)], 'ylim', [min(V0) max(V0)]);
title(['Rippel \Deltai bei I0 = 10A']);
ylabel('V0 [V]');
xlabel('Vin [V]');
zlabel('\Deltai');

% Konturliniendiagramm von jedem I0 erstellen und alle in files speichern
load('MyColorMap', 'mycolormap')
if not(exist('pics', 'dir'))
    mkdir('pics');
end
% Spannungsoffsets hinzufügen
n_offset = zeros(max(V0), max(Vin), max(I0));
n_offset(min(V0):max(V0), min(Vin):max(Vin), min(I0):max(I0)) = n;
minimum = floor(min(n(1,end,:))*100)/100;

figure
for I0_k = I0
   [CS,H] = contourf(n_offset(:,:,find(I0 == I0_k)), minimum:0.01:1);
   %surf(n(:,:,find(I0 == I0_k)), 0.9:0.005:1);
   %clabel(CS, H, 0.97:0.01:1); % sieht komisch aus weil beim Bereich Vin ~
   %V0 der Wirkungsgrad auch wieder sinkt
   colormap(mycolormap);
   colorbar;
   xlabel('V_{in}');
   ylabel('V_{out}');
   title(['Wirkungsgrad bei ' int2str(I0_k) 'A']);
   set(gca, 'xlim', [min(Vin) max(Vin)], 'ylim', [min(V0) max(V0)]);
   filename = ['pics/grafik_' int2str(I0_k) 'A.png'];
   %print('-dpng', filename);
end

display('Completed.'); 