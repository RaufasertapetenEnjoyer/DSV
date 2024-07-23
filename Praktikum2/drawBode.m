function [] = drawBode(f,H)
figure;
subplot(2, 1, 1);
semilogx(f, 20*log(abs(H)));
xlabel("Frequenz f in Hz");
ylabel("Amplitude in dB");

subplot(2, 1, 2);
semilogx(f, rad2deg(angle(H)));
xlabel("Frequenz f in Hz");
ylabel("Phase in °");