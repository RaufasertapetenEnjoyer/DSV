function [outputArg1] = f7_aufgabe2(T, N)
Tp = T * N;
w0 = (2 .* pi) ./ (Tp);
n = 0:1:N-1;

outputArg1 = sum(sin(0* w0 .* n .* T));
end