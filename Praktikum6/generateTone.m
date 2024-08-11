function x = generateTone(fn, Td)
    global Fs;
    global c_m;
  
    m = [1, 2, 3, 4, 6, 8, 10, 12, 14, 16, 18, 20, 24];

    t = 0: 1/(Fs - 1) :Td;

    w_n = 2 * pi * fn;
    w_0 = w_n / 2;

    x = zeros(size(t));
    for k = 1 : length(m)
        x = x + c_m(1,k) * sin(m(k) * w_0 * t);
    end
end