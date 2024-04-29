function [y] = f1_aufgabe3(n, gradSumme)
Tp = 10; % in ms
w0 = (2 .* pi) ./ (Tp); % in 1/ms

vec = zeros(1, length(n));
numberVec = 1:1:gradSumme;

for i = 1:1:length(n)
    vec(i) = sum((1 ./ (2 .* numberVec - 1)) .* sin((2 .* numberVec - 1) .* w0 .* n(i)));
end

y = vec;
end