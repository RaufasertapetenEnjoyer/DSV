function [X] = newDFT(x, key_min, key_max)
N = length(x);
X = zeros(1,key_max - key_min + 1);

for k = key_min : key_max
    m = calculateFrequency(440, k);
    i = k - key_min;
    for n = 0 : N-1
        X(1, i + 1) = X(1, i + 1) + x(1, n + 1) .* exp(-1.*1i.*2.*pi.*((m.*n)./N));
    end
end
end

