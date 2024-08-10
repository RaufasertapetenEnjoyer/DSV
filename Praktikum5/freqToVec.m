function [x] = freqToVec(fn,length)

Fs = 10;
m = [1 2 3 4 6 8 10 12 14 16 18 20 24];
c_m = [0 0.7092 0 1 0.2530 0.1794 0.0903 0 0 0 0.1 0.05 0.1];

w0 = pi * fn; 
%wn = 2 * pi * fn = 2 * w0 -> w0 = 
x = zeros(1, length * Fs);
for t = 0:length * Fs - 1
    for i = 1:13
        a = 1 / (2 * j * c_m(i));
        e = j * m(i) * w0 * t;
        x(t + 1) = x(t + 1) + a * exp(e) - a * exp(-e);
    end
end
x
end

