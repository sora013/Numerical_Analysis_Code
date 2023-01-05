clc;clear;
f = @(x)1/2.0 + 1/4.0*x*x - x*sin(x) - 1/2.0*cos(2*x);
f1 = @(x) 1/2.0*x - (x*cos(x)+sin(x)) ...
    -1/2.0*(-sin(2*x));
TOL = 10^-5;i = 1;xi = pi * (10);
ans_list = [];
while i < 100000
%     ans_list = [ans_list,xi];
    x_new = xi - f(xi)/f1(xi);
    if abs(x_new - xi) < TOL
        break
    end
    xi = x_new;
    i = i+1;
end
i
xi