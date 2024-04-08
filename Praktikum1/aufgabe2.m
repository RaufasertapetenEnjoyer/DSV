% Legen Sie die Variablen a = 3, b = -9 und c = 6 an und verwenden Sie MATLAB, um die beiden
% Ergebnisse x1 und x2 des folgenden Ausdrucks zu berechnen:

a = 3;
b = -9;
c = 6;
x1 = (-b + sqrt((b.^2) - 4 .* (a .* c))) ./ (2 .* a);
x2 = (-b - sqrt((b.^2) - 4 .* (a .* c))) ./ (2 .* a);

disp("x1 lautet: ");
disp(x1);
disp("x2 lautet: ");
disp(x2);


% Unter welchem Namen ist die Formel bekannt?
% quadratische oder mitternachts Formel

% Berechnen Sie die Werte:

disp("pi / 4 ergibt: ");
disp(sin(pi./4));

disp("Der cos von 45° ist:");
disp(cos(deg2rad(45))); % wandle 45 von radiant zu degree um (Funktion: deg2rad) und dann bilde den Cosinus

disp("Der arctan von 1 ist: ");
disp(atan(1));


% Welche Zahl erzeugt die Eingabe „4.375e5”? Wie würden Sie 0.002468 in dieser Schreibweise
% angeben?

disp("4.375e5 ergibt: ");
disp(4.375e5); % => 4.375 * 10^5

% 0.002468 lautet in dieser Schreibweise: 2468e-6 => 2468 * 10^(-6)
disp(2468e-6); % rundet das Ergebnis automatisch
