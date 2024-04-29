function [outputArg1] = f2_aufgabe2(T, N)
Tp = T * N;
w0 = (2 .* pi) ./ (Tp);
n = 0:1:N-1;

outputArg1 = sum(3 .* cos(w0 .* n .* T));
end