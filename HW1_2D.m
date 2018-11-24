m = 0.32.*1.6.*10.^(-31);
kT = 1.38.*10.^(-23).*300;
hbar = 6.626.*10.^(-34)./(2.*pi);
DE = -0.050.*1.6.*10.^(-19);
heta = DE/kT;
coef2 = m./(pi.*hbar.^2)
x = linspace(-100,7);
n2 = coef2.*((1+exp(x-heta)).^(-1)).*(kT)
plot (x,n2)
xlabel ("(E-Ec)/kT")
ylabel ("n[(E-Ec)/kT]")
title ('2-D n = n[(E-Ec)/kT]')