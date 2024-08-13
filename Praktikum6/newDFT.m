function [X] = newDFT(x, key_min, key_max)
N = length(x);
X = zeros(1,key_max - key_min + 1); % X besitzt nur so viele Werte wie Tasten zwischen key_min und key_max sind

for k = key_min : key_max % aktuelle Taste
    m = calculateFrequency(440, k); % Berechnung der Frequenz
    i = k - key_min; % Index i bei 0 beginnend zum Befüllen vom Vektor X
    for n = 0 : N-1
        X(1, i + 1) = X(1, i + 1) + x(1, n + 1) .* exp(-1.*1i.*2.*pi.*((m.*n)./N)); % Formel allgemein unverändert
    end
end
end

