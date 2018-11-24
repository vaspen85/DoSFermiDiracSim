m = 0.32.*1.6.*10.^(-31);
kT = 1.38.*10.^(-23).*300;
hbar = 6.626.*10.^(-34)./(2.*pi);
DE = -0.050.*1.6.*10.^(-19);
heta = DE/kT;
coef = ((m.*2.*kT).^(1.5))./(2.*pi.^2.*hbar.^3);
x = linspace(0,10);
n = coef.*(x.^(0.5))./(1+exp(x-heta))
plot (x,n)
xlabel ("(E-Ec)/kT")
ylabel ("n[(E-Ec)/kT]")
title ('3-D n = n[(E-Ec)/kT]')
