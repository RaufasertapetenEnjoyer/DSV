% Modul Digitale Signalverarbeitung
% Beispiel einer Anwendung der Fourier-Reihe 
% Ein Rechecksignal wird durch ein RC-Filter geschickt.
% Autor: Prof. Dr.-Ing. Gerd Bumiller <gerd.bumiller@hs-ruhrwest.de>
% Datum: 05.11.2015
% 
% Vorausgesetzt: 
% - periodische Signal zur Periode Tp = 1s => Frequenz ganzzahlig
% - Frequenzen < Fs/2

close all;
                        
Fs = 10000;               %[Hz] Abtastfrequenz 
t = (0:2*Fs-1)./Fs;      %[s] Zeitachse f�r 2 Sekunden
f0 = 1;                   %[Hz] Frequenz der Grundschwingung
N = 1001;                %  Maximale Ordnung der Oberschwingungen (ungerade !!!)
R= 1000;                %[Ohm] Widersatnd des RC-Gliedes
C= 0.15e-3;              %[F] Kapazit�t des RC-Glieds
fg=1/(2*pi*R*C);

freqs(1,[R*C 1],logspace(-2,3));
figure

x=zeros(1,length(t));
y=zeros(1,length(t));
for m=-N:2:N
    w=m*2*pi*f0;
    xp = 1/(j*2*m).*exp(j*w*t);
    x = x + xp;
    H=1/(1+j*w*R*C);
    yp = H.*xp;
    y = y + yp;
end;

plot(t,x,t,y);
grid on;
xlabel ('Zeit [s] -->');
ylabel ('Signal -->');
legend('x(t)','y(t)')
title(['Rechtecksignal durch RC FIlter (f_0= ' num2str(f0) 'Hz, f_g= ' num2str(fg) ' Hz)']);
