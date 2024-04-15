clear;
t = [0, 0.3, 0.8, 1.1 ,1.6 ,2.3];
x = [0.6,0.67,1.01,1.35,1.47,1.25];

%Aufgabe3 a)
subplot(1,3,1);
plot(t, x, '-o');
title('Aufgabe3 a)');
ylabel({'Abtastwerte x'});
xlabel({'Zeit t'});
legend('abgetastet');

xlim([-0.5 2.5]);
ylim([0.2 1.6]);

%Aufgabe3 b)
yKoeff = polyfit(t, x, 2);

%Aufgabe3 c)
y = polyval(yKoeff, t);

%Aufgabe d)
subplot(1,3,2);
plot(t, x, '-o', t, y, '-+');

% Create title
title('Aufgabe3 d) mit Ordnung 2');
% Create ylabel
ylabel({'Abtastwerte x'});
% Create xlabel
xlabel({'Zeit t'});
%Legend
legend('abgetastet', 'approximiert');

xlim([-0.5 2.5]);
ylim([0.2 1.6]);

%Aufgabe e)
y2Koeff = polyfit(t, x, 5);
y2 = polyval(y2Koeff, t);

subplot(1,3,3);
plot(t, x, '-o', t, y2, '-+');

% Create title
title('Aufgabe3 e) mit Ordnung 5');
% Create ylabel
ylabel({'Abtastwerte x'});
% Create xlabel
xlabel({'Zeit t'});
%Legend
legend('abgetastet', 'approximiert');

xlim([-0.5 2.5]);
ylim([0.2 1.6]);