clear;
global Fs lengthOf1 m c_m fa1;
Fs = 44100; % Samplerate
lengthOf1 = 0.8; % Dauer einer "ganzen Note" in Sekunden
m = [1 2 3 4 6 8 10 12 14 16 18 20 24]; % Vektor der implementierten Obertöne
c_m = [0 0.7092 0 1 0.2530 0.1794 0.0903 0 0 0 0.1 0.05 0.1];
fa1 = 440;
mainVolume = 0.05;

tone(mainVolume);