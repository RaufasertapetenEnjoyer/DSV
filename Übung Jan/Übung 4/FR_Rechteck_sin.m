% Modul Digitale Signalverarbeitung
% Beispiel einer Fourier-Reihe (Recheck)
% Autor: Prof. Dr.-Ing. Gerd Bumiller <gerd.bumiller@hs-ruhrwest.de>
% Datum: 22.04.2024

clear
close all

F_s = 100e3;    %[Hz] Abtastfrequenz
T_p = 10e-3;    %[s] Periodendauer
f_0 = 1/T_p;    %[1/s] Frequenz der Grundschwingung
w_0 = 2*pi/T_p; %[rad/s] Kreisfrequenz der Grundschwingung

t= 0:1/F_s:20e-3; %Zeitvektor
n= (1:2:5).';
x_5= sum(1./n.*sin(n.*w_0.*t));
n= (1:2:11).';
x_11= sum(1./n.*sin(n.*w_0.*t));
n= (1:2:25).';
x_25= sum(1./n.*sin(n.*w_0.*t));
n= (1:2:99).';
x_99= sum(1./n.*sin(n.*w_0.*t));

plot(t*1e3,x_5,t*1e3,x_11,t*1e3,x_25,t*1e3,x_99)
grid on
xlabel('time [ms]')
ylabel('x_n(t)')
legend('x_5(t)','x_1_1(t)','x_2_5(t)','x_9_9(t)')

% Alle Interpreter auf LaTeX-Syntax stellen
set(groot, 'DefaultTextInterpreter', 'LaTeX');
set(groot, 'DefaultAxesTickLabelInterpreter', 'LaTeX');
set(groot, 'DefaultAxesFontName', 'LaTeX');
set(groot, 'DefaultLegendInterpreter', 'LaTeX');

figure
plot(t*1e3,x_5,t*1e3,x_11,t*1e3,x_25,t*1e3,x_99)
grid on
xlabel('time $t$ [ms]')
ylabel('$x_n(t)$')
legend('$x_5(t)$','$x_{11}(t)$','$x_{25}(t)$','$x_{99}(t)$')
title(['Fourier-Reihe f\"{u}r Rechteck $x_n(t) = ' ...
    '\sum_{i=0}^{\lfloor\frac{n}{2}\rfloor}\frac{1}{m}\cdot\sin(m\omega_0t)$' ...
    ' mit $m=2i+1$'])