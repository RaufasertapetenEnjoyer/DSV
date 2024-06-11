% Modul Digitale Signalverarbeitung
% Beispiel einer Fourier-Reihe (Recheck)
% Autor: Prof. Dr.-Ing. Gerd Bumiller <gerd.bumiller@hs-ruhrwest.de>
% Bearbeitet durch: Michael Busch, 10016514 <michael.busch@stud.hs-ruhrwest.de>
% Datum: 05.11.2015
% letzte Bearbeitung: 30.04.2024
% 
% Vorausgesetzt: 
% - periodische Signal zur Periode Tp = 1s => Frequenz ganzzahlig
% - Frequenzen < Fs/2

close all;
                        
Fs = 1024;               %[Hz] Abtastfrequenz (Audiosignal)
t= 0:1/Fs:2-1/Fs;        %[s] Zeitachse für 2 Sekunden

f0 = 1;                   %[Hz] Frequenz der Grundschwingung
N = 100;                % Maximale Ordnung der Oberschwingung

x=zeros(1,length(t));
w0=2*pi*f0;
for m=2:2:N
      xp = 1/m.*sin(m*w0*t);
    %  xp=1/(2*1i*m) * (exp(1i*m*w0*t) - exp(-1i*m*w0*t));
    x = x + xp;

    plot(t,x,t,xp);
    grid on;
    xlabel ('Zeit [s] -->');
    ylabel ('Signal -->');
    legend('x',[num2str(m) '. OS'])
    title(['Rechtecksignal mit Grundschwingung + ' num2str(m) ' harmonische Oberschwingungen']);

    pause
end