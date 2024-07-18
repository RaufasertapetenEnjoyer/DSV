clear;
% Legen Sie folgende Matrix A an:
A = [5, -3, 11; 4, -10, 6]; % alternativ ohne Komma

disp("Die Matrix A lautet: ");
disp(A);

% Berechnen Sie y als: y = A * vektor

y = A * [2;4;6];
disp("Die Matrix y lautet: ");
disp(y); 

% Welche Form (Matrix, Vektor, ...) hat y?
% y ist ein Vekor / eine Matrix mit einer Spalte und zwei Zeilen

% Berechnen Sie z als Kreuzprodukt („cross product”) der beiden Spaltenvektoren aus A^T, ohne
% diese dafür neu einzugeben.

aT = A';
z = cross(aT(:,1), aT(:,2));
disp("Das Kreuzprodukt z lautet: ");
disp(z);

% Legen Sie eine Einheitsmatrix („identity matrix”) der Kantenlänge 3 an, ohne die Zahlen dafür
% einzeln einzugeben.

identityMatrix = eye(3);
disp("Die Identitätsmatrix mit der Kantenlänge 3 lautet: ");
disp(identityMatrix);

% Gegeben ist die Matrix B

B = [81 72 63;
    54 45 36;
    27 18 9];

% Geben Sie die Diagonale von B aus.

diagonale = diag(B);
disp("Die Diagonale von B lautet: ");
disp(diagonale);

% Entfernen Sie die zweite Spalte aus B

disp("B bevor zweite Spalte gelöscht: ");
disp(B);

disp("B nachdem zweite Spalte gelöscht: ");
B(:, 2) = []; % size(B,2) ist die Anzahl der Spalten und 
                               % 1 : (size(B,2) - 1) => 1 : 2 nimmt die erste und zweite Spalte
disp(B);



