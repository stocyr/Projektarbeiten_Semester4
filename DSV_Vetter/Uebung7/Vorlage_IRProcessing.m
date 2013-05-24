
close all
clear
%-------------------------Daten einlesen-----------------------------------
load DataPulsEar 
fs=21;

% ----------------------Anzeige von Signalen-------------------------------
tacc=[0:length(Acc)-1]/fs;

figure
subplot(2,1,1)
plot(tacc,Acc)
xlabel('t [s]')
ylabel('acc')
subplot(2,1,2)
plot(tacc,IR)
xlabel('t [s]')
ylabel('IR')

% ----------------------Anzeige der Spektrogramme--------------------------
nfft=2*256;
window=hann(nfft);
noverlap=round(nfft*0.9);
figure
subplot(2,1,1)
spectrogram(IR,window,noverlap,nfft,fs,'yaxis')
set(gca,'ylim',[0.5 3])
cax=caxis;
caxis([cax(2)-40 cax(2)])
title('IR')
subplot(2,1,2)
spectrogram(Acc(:,1),window,noverlap,nfft,fs,'yaxis') 
set(gca,'ylim',[0.5 3])
cax=caxis;
caxis([cax(2)-40 cax(2)])
title('Acc')


%------------------- Signalverarbeitung-----------------------------------
% Das Signal wird Segment um Segment bearbeitet
Threshold_acc=40;   % Wenn keine Beschleunigung vorhanden ist
                    % wird das Signal nicht verarbeitet
len=56;             % Länge der Segmente
step=len;
Ordnung=2;          % Ordnung des MA Systems
z=zeros(2,1);       % Zustandsvariablen des Filters


for n=len:step:length(Acc(:,1))
    if std(Acc(n-len+1:n,1))>Threshold_acc
        % ------Bestimmung der Bewegungsfrequenz mit einem AR-Modell-----
         ahat = arburg(Acc(n-len+1:n,1),Ordnung)
         fo=acos(-ahat(2)/2)/(2*pi);
         
        % Hier sollen Sie ein ARMA/IIR Filter durch das Platzieren der 
        % Pol-/und Nullstellen dimensionieren.
        % Die Frequenz der Störung ist durch fo(k) gegeben. Wählen Sie die
        % Radien der Pol-/Nullstellen so, dass der Puls klar zu sehen ist
        % und die Störung sehr strak abgeschwächt sind.
       
        b0=[1 0 0]; %...???
        a0=[1 0 0]; %...???
    else
        a0=[1 0 0];
        b0=[1 0 0];
    end
    % ------------------Filterung------------------------------------------
    [IR_enh(n-len+1:n),z]=filter(b0,a0,IR(n-len+1:n),z);   
end



% ----------------------Nachfilterung-------------------------------------
[b,a]=butter(4,2*[0.5 3]/fs);                           
IR_enh=filtfilt(b,a,IR_enh);

% ----------------- Anzeige von verarbeiteten Signalen--------------------
figure
spectrogram(IR_enh,window,noverlap,nfft,fs,'yaxis')
set(gca,'ylim',[0.5 3])
cax=caxis;
caxis([cax(2)-26 cax(2)])
title('Enhanced Signal')
figure
plot(tHR_pol,HR_pol/60)
axis tight
set(gca,'ylim',[0.5 3])
title('Polar')
xlabel('t [s]')
ylabel('HR [bps]')


r