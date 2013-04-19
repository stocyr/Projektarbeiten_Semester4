function [t,x]=K02_ErzeugungZufallsBitSequenz(Tb,AnzahlBit,fs)
% ollala
if nargin==0
    Tb=1;                   %Bitdauer
    AnzahlBit=10;                  % Anzahl Bit
    fs=1000;
    close all
end

rs=round(Tb*fs);
fss=fs*rs;

Nt=rs*AnzahlBit;
%-------------Generation des bipolaren Signals----------------------------
xo=2*(round(rand(AnzahlBit,1))-0.5);
xo(xo==0)=1;x=zeros(Nt,1);
x(1:rs:end,1)=xo;
g=ones(rs,1) ;
x=conv(x,g);
x=x(1:length(x)-length(g));
t=[0:length(x)-1]/fs;

if nargin==0
    plot(t,x,'Linewidth',2)
    xlabel('t [s]')
    ylabel('Zufallsbitsequenz')
    set(gca,'ylim',[-1.1 1.1])
end
