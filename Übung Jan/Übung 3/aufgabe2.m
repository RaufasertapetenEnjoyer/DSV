clear;
disp("Aufgabe 2");
N = [8, 20, 42];
T = 0.01;
disp("T = " + T + "s -> selbst gewählt");

for i = 1:1:length(N)
    Ni = N(i);
    TP = Ni * T;
    omega0 = (2 * pi) / TP;
    n = 0:1:Ni-1;

    disp(newline + "Funktionen für N = " + Ni + ":");

    f1 = sum(sin(omega0 * n * T));
    disp("f1 = " + f1);

    f2 = sum(3 * cos(omega0 * n * T));
    disp("f2 = " + f2);

    f3 = sum(2 * cos(omega0 * n * T + (3 * pi) / 4));
    disp("f3 = " + f3);

    f4 = sum(2 * cos(omega0 * 3 * n * T));
    disp("f4 = " + f4);

   % f5 = sum(5 * exp(-j * 5 * omega0 * t) 
   % Aufteilung in Real- und Imaginärteil
    real5 = 5 * sum(cos(-5 * omega0 * n * T));
    imag5 = 5 * sum(sin(-5 * omega0 * n * T));
    disp("f5 = " + real5 + " j * (" + imag5 + ")");


    f6 = sum(cos(0 * omega0 * n * T));
    disp("f6 = " + f6);

    f7 = sum(sin(0 * omega0 * n * T));
    disp("f8 = " + f7);

    % f8 = sum(exp(0 * j * omega0 * n * T))
    % Aufteilung in Real- und Imaginärteil
    real8 = sum(cos(0 * omega0 * n * T));
    imag8 = sum(sin(0 * omega0 * n * T));
    disp("f8 = " + real8 + " j * (" + imag8 + ") = " + real8);
    f8 = real8;
end