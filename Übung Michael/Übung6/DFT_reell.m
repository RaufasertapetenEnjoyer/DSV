% Beispiel zu reellwertigen Eingangsignalen
% Prof. Dr.-Ing. Gerd Bumiller
% 03.12.2012
close all;
clear
 
x = randn(1,32);  % Z�f�lliges reellwertiges Signal
xg=0.5*(x+x([1 end:-1:2]));
xu=0.5*(x-x([1 end:-1:2]));
X=fft(x);               % DFT des Signals
XG=fft(xg);               % DFT des Signals
XU=fft(xu);               % DFT des Signals
Xsym=[X(17:end) X(1:17)];   % periodische Fortsetzung 
plot(-16:16, real(Xsym), -16:16 ,imag(Xsym), 'r')
grid
title('DFT eines reellwertigen Signals x[n]')
xlabel('Frequenz m --->')
ylabel('X[m] --->')
legend('Re(X[m])','Im(X[m])')
hold on


pause
XGsym=[XG(17:end) XG(1:17)];   % periodische Fortsetzung 
sum(abs(imag(XG)))
plot(-16:16, real(XGsym), 'k')
legend('Re(X[m])','Im(X[m])','Re(X_g[m])')

pause
XUsym=[XU(17:end) XU(1:17)];   % periodische Fortsetzung 
sum(abs(real(XU)))
plot( -16:16 ,imag(XUsym), 'k')
legend('Re(X[m])','Im(X[m])','Re(X_g[m])','Im(X_u[m])')
