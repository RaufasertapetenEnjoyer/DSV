function x = makeTone(n, fraction, volume) % n: Tastennummer; fraction: Tonlänge anteilig (0-1); volume: Lautstärke (0-1)
    global lengthOf1 c_m m Fs fa1;

    fn = calculateFrequency(fa1, n);

    T = fraction * lengthOf1;

    t = 0:1/Fs:T;

    w_n = 2 * pi * fn;
    w_0 = w_n / 2;

    x = zeros(1, length(T));
    for k = 1:length(m)
        x = x + c_m(k) * sin(m(k) * w_0 * t);
    end

    x = x .* volume;
end