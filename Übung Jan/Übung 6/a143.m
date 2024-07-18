e = 2^0;
n = 0;
while (1 + e > 1) 
    n = n + 1;
    e = 2^(-n);
end
disp("kleinste Maschinenzahl 1 + e = " + e + " = 2e-" + n);

e = 2^0;
n = 0;
while (e > 0) 
    n = n + 1;
    e = 2^(-n);
end
disp("kleinste Maschinenzahl e = " + e + " = 2e-" + n);