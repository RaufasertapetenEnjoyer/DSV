function x = makeTone(n, fraction, volume)
    global lengthOf1 c_m m Fs;

    fn = calculateFrequency(440, n);

    t = fraction * lengthOf1;

    tVector = 0:1/Fs:t;

    w_n = 2 * pi * fn;
    w_0 = w_n / 2;

    x = zeros(size(t));
    for k = 1:length(m)
        x = x + c_m(k) * sin(m(k) * w_0 * tVector);
    end

    x = x .* volume;
end

