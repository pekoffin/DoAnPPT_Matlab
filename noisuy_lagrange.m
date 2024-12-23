function [dathuc_noisuy, giatri_noisuy] = noisuy_lagrange(x, y, x0)
    if length(x) ~= length(y)
        error('Dữ liệu x và y phải có cùng kích thước.');
    end

    n = length(x);
    dathuc_noisuy = 0;

    for i = 1:n
        term = y(i);

        for j = 1:n
            if j ~= i
                term = term * (sym('t') - x(j)) / (x(i) - x(j));
            end
        end

        dathuc_noisuy = dathuc_noisuy + term;
    end

    giatri_noisuy = subs(dathuc_noisuy, sym('t'), x0);
end
