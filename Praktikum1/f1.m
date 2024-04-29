function [y] = f1(td, a, f, Fs)
n = 0: (1 / Fs) : td;
y = a .* sin(2 .* pi .* f .* n);
end