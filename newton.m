function [result, n] = newton(fx, daoham, x0, saiso)
    x = x0;
    n = 0;

    while true
        x1 = x - fx(x) / daoham(x);
        n = n + 1;

        if abs(x1 - x) < saiso
            result = x1;
            return;
        end

        x = x1;

        if n > 1000
            error('Phương trình không hội tụ sau 1000 lần lặp.');
        end
    end
end
