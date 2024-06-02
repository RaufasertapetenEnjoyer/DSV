%play(x1);
%play(x2);
x1a = getaudiodata(x1);
x2a = getaudiodata(x2);
x3a = zeros(recDuration*Fs, 1);

for i = 1:recDuration*Fs
    x3a(i) = x1a(i) + x2a(i);
end

plot(x3a);

sound(x3a, Fs);