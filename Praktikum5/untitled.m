freqToVec(440, 1);

%{
fn = 47
w0 = 2 * pi * fn;
x = zeros(lengthOf1 * 100);
for t = 0:lengthOf1 * 10
    for m = 1:13
        a = 1 / (2 * j * c_m(m));
        e = j * m * w0 * t;
        x(t + 1) = x(t + 1) + a * exp(e) - a * exp(-e);
    end
end
x
%}