close all 
fontsize = 18;
set(0, 'defaultAxesFontSize', fontsize);
set(0, 'defaultTextFontSize', fontsize);
%% Gegebene Messwerte:
% U: Spaltenvektor mit 20 Spannungsmesswerten von 1V bis 20V
% I: Spaltenvektor mit 20 Strommesswerten in A

%% Berechnung Widerstandskennlinie
R = U./I;

%% Berechnung Drahttemperatur mit Temperaturkoeffizient
a_wolfram = 4.8E-3;
R20 = 12.1;
T_umgebung = 23;

T_draht = (R-R20)/(R20*a_wolfram) + T_umgebung;

% Plot
[haxes,hline1,hline2] = plotyy(U, I, U, R);
grid on
xlabel('Spannung / V');
axes(haxes(1));
set(hline1, 'linewidth', 2);
ylabel('Strom / A');
axes(haxes(2));
set(hline2, 'linewidth', 2);
ylabel('Widerstand / \Omega');
legend('Strom', 'Widerstand', 'Location', 'NorthWest');
print('-dpng', 'images/widerstand.png');

%% Berechnung abgestrahlte Leistung
sigma = 5.6704*10^(-8);
k = sigma * 0.0000013;
P = U.*I;
P_abstrahl = k * (T_draht.^4 - T_umgebung.^4);
figure
plot(T_draht, P, 'x', T_draht, P_abstrahl, 'linewidth', 2);
grid on
legend('gemessen', 'berechnet', 'Location', 'NorthWest');
xlabel('Temperatur / °C');
ylabel('Abstrahlleistung / W');
print('-dpng', 'images/leistung.png');