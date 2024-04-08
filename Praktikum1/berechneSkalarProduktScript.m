% Erstellen Sie ein kurzes Script, das die beiden Vektoren aus der Datei liest und das Skalarprodukt
% berechnet

load("variablenFuerSkalarprodukt.mat", 'b', 't');

skalarProdukt = dot(b, t);
disp("Das Sklaraprodukt lautet: ");
disp(skalarProdukt);