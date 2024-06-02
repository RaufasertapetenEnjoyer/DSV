
clear;
Fs = 48000; % Abtastfrequenz in Hz
x1 = audiorecorder(Fs, 8, 1);
x2 = audiorecorder(Fs, 8, 1);

recDuration = 2; 

disp("start");
recordblocking(x1,recDuration);
disp("end");

pause(2);

disp("start");
recordblocking(x2,recDuration);
disp("end");

%play(x1);
%play(x2);