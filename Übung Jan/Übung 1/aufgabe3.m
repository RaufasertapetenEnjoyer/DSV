% Eingangswerte
t = [0,0.3,0.8,1.1,1.6,2.3];
x = [0.6,0.67,1.01,1.35,1.47,1.25];

% Teilaufgabe b)
y = polyfit(t, x, 2);

% Teilaufgabe c)
y2 = polyval(y, t);

% Teilaufgabe d)
% In dem Plot ist zu sehen, dass das Polynom 2. Grades nicht perfekt auf
% die Eingangsdaten passt. Die beiden Kurven sind zwar ähnlich, es ist aber
% zu sehen, dass die Steigung der Eingangsdaten nicht wie bei einer
% Funktion 2. Grades bis zu einem Maximum abflacht. Stattdessen ist hier
% eher von einer Funktion mit einem ungeraden Grad auszugehen, da grob ein
% Wendepunkt zu erkennen ist.

% Teilaufgabe e)
z = polyfit(t, x, 5);
z2 = polyval(z, t);
% Die neue Näherung liegt im Plot genau auf den Ursprungswerten. Wie
% erwartet passt eine Funktion höheren Grades mit ungerader Potenz besser
% auf das Signal. Da wir nur diesen Wertebereich betrachten, reicht dieses
% Polynom somit völlig aus. Eine möglichie Periodizität des Signals ist zu
% vernachlässigen.

% Plot
subplot(3, 1, 1);
plot(t, x);
grid on;
title('Aufgabe 3: Polynomapproximation');
xlabel('Zeit t');
ylabel('Werte x');
legend(["Eingangswerte"]);
legend('Location','southeast');

subplot(3, 1, 2);
plot(t, x);
hold on;
plot(t, y2);
hold off;
grid on;
xlabel('Zeit t');
ylabel('Werte x');
legend(["Eingangswerte"], ["Polynom 2. Ordnung"]);
legend('Location','southeast');

subplot(3, 1, 3);
plot(t, z2, 'g');
grid on;
xlabel('Zeit t');
ylabel('Werte x');
legend(["Polynom 5. Ordnung"]);
legend('Location','southeast');
