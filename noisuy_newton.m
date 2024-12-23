function [dathuc_noisuy, giatri_noisuy] = noisuy_newton(x, y, x0)
    if length(x) ~= length(y)
        error('Dữ liệu x và y phải có cùng kích thước.');
    end

    n = length(x);
    F = zeros(n, n);

    F(:, 1) = y';

    for j = 2:n
        for i = j:n
            F(i, j) = (F(i, j - 1) - F(i - 1, j - 1)) / (x(i) - x(i - j + 1));
        end
    end

    syms t;
    dathuc_noisuy = F(1, 1);

    for j = 2:n
        term = F(j, j);

        for i = 1:j - 1
            term = term * (t - x(i));
        end

        dathuc_noisuy = dathuc_noisuy + term;
    end
    giatri_noisuy = subs(dathuc_noisuy, t, x0);
end
