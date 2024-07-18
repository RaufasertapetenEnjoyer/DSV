clear;
% Was tut der Befehl „fplot” und wie können Sie ihn verwenden?
%   wird verwendet um Funktion in bestimmtem Bereich zu plotten
%   Eingaben: Funktion f und Interval a bis b ([a, b])

f = @(x) x.^2;
fplot(f, [-5,5]);

%  Was ist der Unterschied in der Ausgabe bei Matlab zwischen einer Zeile die mit einem Semikolon
%  abgeschlossen wird und einer die ohne Semikolon abgeschlossen wird?
%   das Semikolon unterdrückt die Ausgabe eines Ausdrucks auf der Konsole, wird eine Zeile
%   ohne Semikolon beendet, so wird der Ausdruck von z.B. Wert einer Variable auf
%   der Konsole ausgegeben

x1 = 10;
x2 = 5

% Erstellen Sie einen Vektor ’a’ von -12 bis 12 in 4-er Schritten

a = [-12: 4: 12]; % -12 Startwert, 12 Endwert, 4 Schrittweite
disp("Das Ergebnis von a ist: ");
disp(a);

% Dividieren Sie jeden dritten Wert von ’a’ durch 4, ohne die restlichen Werte zu ändern oder zu
% entfernen

disp("Das Ergebnis von a/4 an jeder dritten Stelle ist: ");
for i = 1:3:length(a)
    a(1,i) = a(1,i) ./4;
end
disp(a);

% Erstellen Sie einen Vektor ’b’ von -3 bis 3 in 1-er Schritten

b = [-3:3]; % -3 Startwert, 3 Endwert, Schrittweite 1 (automatisch)
disp("Das Ergebnis von b ist: ");
disp(b);

% Berechnen Sie das Skalarprodukt („dot product”) der beiden Vektoren, z.B. in eine Variable ’c’

c = dot(a,b);
disp("Das Skalarprodukt beträgt: ");
disp(c);

% Berechnen Sie die Werte des Sinus der Werte von ’a’, z.B. in einer Variable ’d’

sinusWerte = sin(a);
disp("Die Sinuswerte von a lauten: ");
disp(sinusWerte);

% Geben Sie die Anzahl der Elemente des Vektors ’b’ aus

lengthB = length(b);
disp("Die länge des Vektor b beträgt: ");
disp(lengthB);

% Transponieren Sie den Vektor ’a’ und speichern Sie den neuen Vektor z.B. in einer Variable ’t

t = transpose(a); % alternativ auch a'
disp("Die transopnierte Matrix a lauetet: ");
disp(t);

% Speichern Sie die Variablen ’t’ und ’b’ in eine .mat-Datei

save("variablenFuerSkalarprodukt.mat", 'b', 't'); % speichert b und t in variablenFuerSkalarprodukt.mat (neue Datei)

% Löschen Sie die zuvor gespeicherten Variablen aus dem Workspace

clear; % cleart den gesamten Workspace, alternativ alle Variablen einzeln löschen (z.B. clear a;)