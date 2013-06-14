%------ ---------Toleranzschema des digitalen Filters----------------------------
Apass=3;fdpass=2000; % Abschwächung und Grenzfrequenz des Durchlassbereichs 
Astop=10;fdstop=3000; % Abschwächung und Grenzfrequenz des Sperrbereichs 
fa=8000; % Abtastfrequenz
% Bestimmung der analogen Grenzfrequenzen (Kompensation der
% Frequenzverzerrung der Bilinear-Transformation)
fpass=fa/pi*tan(pi*fdpass/fa);
fstop=fa/pi*tan(pi*fdstop/fa);
%-------------------Berechnung der Ordnung des analogen Filters---------------------
% siehe Kurs Signale und Systeme mit MATLAB
Ordnung_toleranzschema=buttord(fpass,fstop,Apass,Astop,'s');
Ordnung_aufgabenstellung = 2;
%-------------------Bestimmung der Koeffizienten des analogen Filters---------------
[b,a]=butter(Ordnung_aufgabenstellung,2*pi*fpass,'s');
tf(b,a)
%-------------------Bilinear-Transformation-----------------------------------------
[bd,ad]=bilinear(b,a,fa); 
%-------------------Überprüfung und Anzeige-----------------------------------------
nfft=4*256;
[H,f]=freqz(bd,ad,nfft,fa);
plot(f,20*log10(abs(H)),'r', 'Linewidth',4)
set(gca,'ylim',[-Astop-5 3]);grid minor;ylabel('|H(f)|');xlabel('f [Hz]')

%-------------------Bilinear-Transformation für digitales Filter-----
[bd,ad]=butter(Ordnung_aufgabenstellung,fdpass/(fa/2));
hold all 
grid on
[H,f]=freqz(bd,ad,nfft,fa);
plot(f,20*log10(abs(H)),'Linewidth',2)
legend('Butterworth analog Entwurf', 'Butterworth digital Entwurf')
plot(2000, -3, 'rO', 'linewidth', 3)


