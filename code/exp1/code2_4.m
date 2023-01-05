clc;clear;
f= @(x) 5*x - exp(x);
TOL = 0.0001;
% 二分法
clc;clear;
f= @(x) 5*x - exp(x);
TOL = 0.0001;
l = 0; r = 1;
while i < 1000
    x = (l + r) / 2;
    tmp = sign(f(x));
    tmpl = sign(f(l));
    tmpr = sign(f(r));
    if tmp * tmpl < 0
        r = x;
    else
        l = x;
    end
    if r - l < TOL
        break;
    end
    i = i+1;
end
l
% 牛顿法
clc;clear;
f= @(x) 5*x - exp(x);
f1 = @(x) 5 - exp(x);
TOL = 0.0001;
i = 1;xi = 0.5;
while i < 100000
    x_new = xi - f(xi)/f1(xi);
    if abs(x_new - xi) < TOL
        break
    end
    xi = x_new;
    i = i+1;
end
% 割线法
clc;clear;
f= @(x) 5*x - exp(x);
TOL = 0.0001;
i = 1;x0 = 0;x1 = 1;y0 = f(x0);y1 = f(x1);
while i < 100000
    y0 = f(x0);y1 = f(x1);
    x = x1 - y1*(x1-x0)/(y1-y0)
    if abs(x - x1) < TOL
        break
    end
    x0 = x1;y0 = y1;
    x1 = x; y1 = f(x);
    i = i+1;
end
x
% 错位法
clc;clear;
f= @(x) 5*x - exp(x);
TOL = 0.0001;
i = 1;x0 = 0;x1 = 1;y0 = f(x0);y1 = f(x1);
while i < 100000
    y0 = f(x0);y1 = f(x1);
    x = x1 - y1*(x1-x0)/(y1-y0)
    if abs(x - x1) < TOL
        break
    end
    y = f(x);
    if(sign(y) * sign(y1) < 0)
        x0 = x1;
        y0 = y1;
    end
    x1 = x;
    y1 = y;
    i = i+1;
end
x
