function [out] = idft(X)
N = length(X);
x = zeros(1,N);
for n = 0 : N-1
    for m = 0 : N-1
        x(1, n + 1) = x(1, n + 1) + X(1, m + 1) .* exp(1i.*2.*pi.*((m.*n)./N));
    end
end
out = (1 ./ N) * x;
end