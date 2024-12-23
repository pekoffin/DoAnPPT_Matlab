function result = tichphan_hinhthang(x, y, a, b, N)
    if N <= 0 || mod(N, 1) ~= 0
        error('N must be a positive integer.');
    end
    if length(x) ~= length(y)
        error('khoang cach x v� y phai giong nhau.');
    end
    if N <= 1
        error('N phai lon hon 1.');
    end
    h = (b - a) / N;
    result = 0.5 * h * (y(1) + 2 * sum(y(2:end-1)) + y(end));
end