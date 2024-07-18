% Modul Digitale Signalverarbeitung
% Beispiel einer Anwendung der Fourier-Reihe 
% Ein Rechecksignal wird durch ein RC-Filter geschickt.
% Autor: Prof. Dr.-Ing. Gerd Bumiller <gerd.bumiller@hs-ruhrwest.de>
% Bearbeiter: Jan Treiber <jan.treiber@stud.hs-ruhrwest.de>
%   Matr.-Nr.: 10016515
% letzte Bearbeitung: 12.05.2024
% 
% Vorausgesetzt: 
% - periodische Signal zur Periode Tp = 1s => Frequenz ganzzahlig
% - Frequenzen < Fs/2

close all;
                        
Fs = 10^6;               %[Hz] Abtastfrequenz 
t = (0:1/Fs:0.01);      %[s] Zeitachse für 10 ms
f0 = 140;                   %[Hz] Frequenz der Grundschwingung
N = 1001;                %  Maximale Ordnung der Oberschwingungen (ungerade !!!)
R= 330;                %[Ohm] Widerstand des RLC-Gliedes
C= 0.1e-6;              %[F] Kapazität des RLC-Glieds
L= 100e-3;              %[H] Induktivität des RLC-Glieds

fg=1/(2*pi*R*C*L);

freqs(1,[L*C R*C 1],logspace(-2,3));
figure

x=zeros(1,length(t));
y=zeros(1,length(t));
for m=2:2:N
    w=m*2*pi*f0;
    xp = 1/(j*2*m).*exp(j*w*t);
    x = x + xp;
    H=1/(1+j*w*R*C-(w^2)*L*C);
    yp = H.*xp;
    y = y + yp;
end;


plot(t,x,t,y);
grid on;
xlabel ('Zeit [s] -->');
ylabel ('Signal -->');
legend('x(t)','y(t)')
title(['Sägezahnsignal durch RC FIlter (f_0= ' num2str(f0) 'Hz, f_g= ' num2str(fg) ' Hz)']);