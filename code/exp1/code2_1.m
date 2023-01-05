clc;clear;

i = 1;xi = 2;ans = 2.5;

iter_list = [];ans_list = [];
while i < 100 & ((i < 10) | abs(xi-ans) < 10^9 & abs(xi-ans) > 10^-9)
    iter_list = [iter_list, i];
    ans_list = [ans_list, xi];
%     xi = 15 - 2*xi*xi;
%     xi = 15 / (2*xi +1);
    xi = xi - (2*xi*xi + xi - 15) / (4*xi + 1);
    i = i+1;
end
ans_list
plot(iter_list, ans_list,'-')