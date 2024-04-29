function [] = f5_aufgabe2(T, N)
Tp = T * N;
w0 = (2 .* pi) ./ (Tp);
n = 0:1:N-1;

real = 5 * sum(cos(-5* w0 .* n .* T));
imag = 5 * sum(sin(-5 * w0 .* n .* T));

disp(real + " + j * (" + imag + ")");
end