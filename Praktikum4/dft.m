function [out] = dft(x)
N = length(x);
X = zeros(1,N);
for m = 0 : N-1
    for n = 0 : N-1
        X(1, m + 1) = X(1, m + 1) + x(1, n + 1) .* exp(-1.*1i.*2.*pi.*((m.*n)./N));
    end
end
out = X;
end