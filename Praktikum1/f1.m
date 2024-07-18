function [y] = f1(td, a, f, Fs)
t = 0: (1 / Fs) : td;
y = a .* sin(2 .* pi .* f .* t);
end