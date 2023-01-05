clc;clear;
TOL = 0.0005;
i = 1;l = 0; r = 1;
while i < 1000
    mid = (l + r) / 2;
    tmp = sign(2 - 3*mid -sin(mid));
    tmpl = sign(2 - 3*l -sin(l));
    tmpr = sign(2 - 3*r -sin(r));
    if tmp * tmpl < 0
        r = mid;
    else
        l = mid;
    end
    if r - l < TOL
        break;
    end
    i = i+1;
end