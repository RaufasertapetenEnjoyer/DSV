e = 2^0;
n = 0;
while (1 + e > 1) 
    n = n + 1;
    e = 2^(-n);
end
disp("kleinste Maschinenzahl e = " + e + " = 2e-" + n);