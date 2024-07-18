clear;
Td = 0.1;
Fs = 50000;
n = 0 : Td * Fs - 1;
t = n / Fs;

f1 = 30;
f2 = 100;
f3 = 200;

x = cos(2*pi*f1*t) + sin(2*pi*f2*t) + 2*cos(2*pi*f3*t+(pi/2));
X = fft(x);
counter = 0;
for i = 1 : length(X)
    if abs(X(1,i)) > 10e-10
        counter = counter + 1;
    end
end
disp(counter);

figure;
%plot(n, abs(X));
%xlabel("index m");
%ylabel("abs(X)");

x1 = zeros(1, length(n));
for i = 1 : 5000
    x1(1,i) = X(1,4) * exp(1i*2*pi*3*i/5000);
end
plot
plot(t, x1);