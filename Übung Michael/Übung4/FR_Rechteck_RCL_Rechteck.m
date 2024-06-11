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
                        
Fs = 1e+6;              %[Hz] Abtastfrequenz 
t = 0 : 1 ./ Fs : 0.02; %[s] Zeitachse für 20 Sekunden
f0 = 140;               %[Hz] Frequenz der Grundschwingung
N = 1001;               % Maximale Ordnung der Oberschwingungen (ungerade !!!)
R = 330;                %[Ohm] Widersatnd des RCL-Gliedes
C = 0.1e-6;             %[F] Kapazität des RCL-Glieds
L = 100e-3;             %[H] Induktivität des RCL-Glied
fg = 1/(2*pi*R*C);

freqs(1,[L*C R*C 1],logspace(-2,3));
figure

x=zeros(1,length(t));
y=zeros(1,length(t));
for m=-N:2:N
    w=m*2*pi*f0;
    xp = 1/(1i*2*m).*exp(1i*w*t);
    x = x + xp;
    H = 1/(1+ 1i*w*R*C - (w^2)*L*C);
    yp = H.*xp;
    y = y + yp;
end

plot(t,x,t,y);
grid on;
xlabel ('Zeit [s] -->');
ylabel ('Signal -->');
legend('x(t)','y(t)')
title(['Rechtecksignal durch RC FIlter (f_0= ' num2str(f0) 'Hz, f_g= ' num2str(fg) ' Hz)']);

    