function [] = f8_aufgabe2(T, N)
real = f6_aufgabe2(T,N);
imag = f7_aufgabe2(T,N);

disp(real + " + j * (" + imag + ")");
end