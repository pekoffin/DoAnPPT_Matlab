function [result, n] = chia_doi(fx, a, b, saiso)
    fa = fx(a);
    fb = fx(b);
    n = 0; 

    if fa * fb > 0
        error(' Chọn lại khoảng phân li có f(a) * f(b) < 0.');
    end
    while (b - a) / 2 > saiso
        c = (a + b) / 2;
        fc = fx(c);

        n = n + 1; 

        if fc == 0
            result = c;
            return;
        elseif fa * fc < 0
            b = c;
        else
            a = c;
        end
    end
    result = (a + b) / 2;
end