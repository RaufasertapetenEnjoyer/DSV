function [outputArg1] = f4_aufgabe2(T, N)
Tp = T * N;
w0 = (2 .* pi) ./ (Tp);
n = 0:1:N-1;

outputArg1 = sum(2 .* cos(w0 .* n .* T * 3));
end