X1 = fft(x1a);
X2 = fft(x2a);

% Achtung Ohren
%{
sound(real(X1), Fs);
pause(2);
sound(real(X2), Fs);
%}

Y1 = 0.2 * X1;
Y2 = X2;
Y = 0.5*X1 + 0.2*X2;

y = ifft(Y);
x4 = 0.5 * x1a + 0.2 * x2a;

d1 = 0;
for i = 1:96000
    di = abs(x4(i) - y(i));
    if d1 < di
        d1 = di;
    end
end
d1

%{
y1 = ifft(Y1);
y2 = ifft(Y2);

subplot(2, 1, 1);
plot(x1a);

subplot(2, 1, 2);
plot(y1);

x12 = 0.2 * x1a;

d = 0;
for i = 1:96000
    di = abs(x12(i) - y1(i));
    if d < di
        d = di;
    end
end
d
%}
