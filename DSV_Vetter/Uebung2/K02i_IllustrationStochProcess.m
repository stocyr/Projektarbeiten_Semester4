clear;
lw=2;
mux=10;
sigmax=30;
fs=1;
format compact;
c=['r-';'g-';'b-';'k-';'c-';'m-'];

close all
r=0.99;
fo=0.125;

a=poly([r*exp(i*2*pi*fo/fs) r*exp(-i*2*pi*fo/fs)]);b=1;

nbrsim=length(c);
N=100000;
lagmax=20;
scrsz = get(0,'ScreenSize');
cst=0.0;
figure('Position',[cst*scrsz(3) cst*scrsz(4) (1-cst)*scrsz(3) (1-cst)*scrsz(4)])
t=[0:N-1]'/fs;
for i=1:nbrsim
    noise=randn(N,1);
    noise=(noise-mean(noise))/std(noise);
    x(:,i)=sigmax*noise+mux;
    %x(:,i)=filter(b,a,x(:,i));
    sigmaex=std(x(:,i));
    muex=mean(x(:,i));
    xc=[-1:0.02:1]*5*sigmaex+muex;
    [pdf,xc]=hist(x(:,i),xc);
    subplot(2,3,1)
    plot(-pdf/sum(pdf),xc,c(i),'Linewidth',lw)
    hold all
    xlim=get(gca,'xlim');
    plot(linspace(xlim(1),xlim(2)),(muex+sigmaex)*ones(100,1),'k--','Linewidth',lw)
    plot(linspace(xlim(1),xlim(2)),(muex-sigmaex)*ones(100,1),'k--','Linewidth',lw)
    plot(linspace(xlim(1),xlim(2)),(muex)*ones(100,1),'k--','Linewidth',lw)
    text(0,muex+sigmaex,'  \mu+\sigma')
    text(0,muex,'  \mu')
    text(0,muex-sigmaex,'  \mu-\sigma')
    xlabel('p_s(s)')
    ylabel('Amplitude von s(t))')
    title('Verteilungsdichte')
    set(gca,'XTick',[])
    set(gca,'YTick',[])
    set(gca,'ylim',[-1 1]*5*sigmaex+muex)
    subplot(2,3,2)
    plot(t,x(:,i),c(i,:),'Linewidth',lw)
    hold on
    set(gca,'xlim',[10 60])
    xlim=get(gca,'xlim');
    plot(linspace(xlim(1),xlim(2)),(muex+sigmaex)*ones(100,1),'k--','Linewidth',lw)
    plot(linspace(xlim(1),xlim(2)),(muex-sigmaex)*ones(100,1),'k--','Linewidth',lw)
    plot(linspace(xlim(1),xlim(2)),(muex)*ones(100,1),'k--','Linewidth',lw)
    xlabel('t [s]')
    ylabel('s(t) (Amplitude)')
    title('Zeitbereich')
    set(gca,'XTick',[])
    set(gca,'YTick',[])
    set(gca,'ylim',[-1 1]*5*sigmaex+muex)
    subplot(2,3,3)
    Xf=fft(x(end-1000:end-500,i));
    f=[-length(Xf)/2:length(Xf)/2-1]*fs/(length(Xf));
    plot(f,20*log10(abs(fftshift(Xf))),c(i,:),'Linewidth',lw)
    set(gca,'XTick',[])
    set(gca,'YTick',[])
    
    hold all
    ylabel('Bertragsspektrum |S(f)| [dB]')
    xlabel('f [Hz]')
    title('Frequenzbereich')
    title(['Frequenzbereich $X(f)=\int\limits_{ - \infty }^\infty x(t)e^{-j2 \pi f t} dt$'],'interpreter','latex')
    subplot(2,3,5)
    rxx(:,i)=xcorr(x(:,i),lagmax,'unbiased');
    plot([-lagmax:lagmax]/fs,rxx(:,i),c(i,:),'Linewidth',lw)
    hold on
    xlabel('\tau [s]')
    ylabel('Autokorrelation R_{ss}(\tau)')
    title(['$Rss(\tau)=\int\limits_{ - \infty }^\infty s(t)s(t+\tau) dt$'],'interpreter','latex')
    if i==1
        text(0.4,0.95*[sigmaex^2+muex^2],'U_{Eff}^2=\mu^2+\sigma^2')
    end
    xlim=get(gca,'xlim');
    text(xlim(2),muex^2,'  \mu^2')
    meanx(i)=mean(x(:,i));
    varx(i)=var(x(:,i));
    set(gca,'XTick',[])
     set(gca,'YTick',[])
    subplot(2,3,6)
    f=[-lagmax:lagmax]/(2*fs*lagmax);
    Ls=fftshift(abs(fft(rxx(:,i))));
    Ls=(varx(i)+meanx(i)^2)*Ls/sum(Ls);
    plot(f,10*log10(Ls),c(i,:),'Linewidth',lw)
    ylim=get(gca,'ylim');
   set(gca,'XTick',[])
    set(gca,'YTick',[])
    hold on
    xlabel('f [Hz]')
    ylabel('Leistungsdichte (L_{ss}) [dB]')
    text(0,0.95*10*log10(muex^2),' U_{DC}^2=\mu^2')
    title(['$L_{ss}=\int\limits_{ - \infty }^\infty R_{ss}(\tau)e^{-j2 \pi f \tau} d\tau \qquad \qquad U_{Eff}^2=\int\limits_{ - \infty }^\infty L_{ss}(f)df$'],'interpreter','latex')
    %title(['$\frac{1}{T}\int L_s(f)df$ =' num2str(int_rxy)],'interpreter','latex')
    subplot(2,3,4)
    l=0:0.01:1;
    plot(l,l,'w')
    set(gca,'XTick',[])
    set(gca,'YTick',[])
    text(0,0.9,[' \mu =' num2str(round(meanx))])
    text(0,0.7,[' \sigma =' num2str(round((sqrt(varx))))])
    text(0,0.5,[' \mu   : Mittel- oder DC-Wert (U_{DC})'])
    text(0,0.3,[' \sigma  : Standardabweichung '])
    text(0,0.23,['       Effektivwert der AC-Komponente (U_{Eff,AC}) '])
    text(0,0.1,[' \sigma^2 : Varianz/Streuung'])
    text(0,0.03,['       Leistung der AC-Komponenete'])
    title(['$\mu=\lim\limits_{T \to \infty }\ \frac{1}{{2T}}\int\limits_{-T}^T s(t)dt \qquad \sigma^2=\lim\limits_{T \to \infty }\ \frac{1}{{2T}}\int\limits_{-T}^T (s(t)-\mu)^2 dt \qquad  \sigma=\sqrt{\sigma^2}$'],'interpreter','latex')
    pause 
end

