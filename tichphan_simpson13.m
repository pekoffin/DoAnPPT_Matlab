function result = tichphan_simpson13(x, y, a, b, N)
    if length(x) ~= length(y)
        error('khoang cach x va y phai giong nhau.');
    end
    if mod(N, 2) ~= 0
        error('N phai la so chan.');
    end

    if a >= b
        error('can a phai nho hon can b');
    end
    h = (b - a) / N;
    result = h / 3 * (y(1) + 4 * sum(y(2:2:end-1)) + 2 * sum(y(3:2:end-2)) + y(end));
end
