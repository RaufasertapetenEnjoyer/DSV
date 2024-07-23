function [H] = H(fMin, fMax, v)
a = log10(fMin);
b = log10(fMax);
f = logspace(a,b);  %[Hz]
w = 2*pi*f;

if v == 1
    C = 0.00002;    %[F]
    R = 12;         %[Ohm]
    L = 0.001;      %[H]
    H = (-C .* L .* w.^2) ./ (-C .* L .* w.^2 + R .* C .* 1i .* w + 1);
end

if v == 2
    C = 0.000015;   %[F]
    R = 12;         %[Ohm]
    L = 0.002;      %[H]
    H = 1 ./ (-L .* C * w.^2 + R .* C .* 1i * w + 1);
end

if v == 3
    C1 = 0.0001;    %[F]
    C2 = 0.00095;   %[F]
    R = 0.3;        %[Ohm]
    L1 = 0.00005;   %[H]
    L2 = 0.000001;  %[H]
    %y = -1i .* w.^3 .* L2 .* L1 .* C2 - w.^2 .* L1 .* C2 .* R;
    y = -(w.^2 .* C2 .* L2) + j  .* w .* C2 .* R;
    %x = -1i .* w.^3 .* (C1 .* C2 .* L2 + C2 .* L1 .* L2) - w.^2 .* (R .* C1 .*C2 + R .* C2 .* L1) + 1i .* w .* (C2 + C1 + L1);
    x = j^4 .* w.^4 .* C1 .* C2 .* L1 .* L2 + j^3 .* w.^3 .* C1 .* C2 .* R .* L1 - w.^2 .* (C1 .* C2 + C2 .* L1 + C2 .* L2) + j .* w .* C2 .* R + 1;
    H = y ./ x;
end

if v > 3
    disp("Leider ist für das gewählte v keine Version verfügbar, wälen Sie bitte ein anderes!");
end
end