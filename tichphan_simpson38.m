function result = tichphan_simpson38(x, y, a, b, N)
    if length(x) ~= length(y)
        error('khoang cach x va y phai giong nhau.');
    end
    if mod(N, 3) ~= 0
        error('N phai la so chia het cho 3.');
    end
    if a >= b
        error('can a phai nho hon can b.');
    end
    h = (b - a) / N;
    result = (3 * h / 8) * (y(1) + 3 * sum(y(2:3:end-2)) + 3 * sum(y(3:3:end-1)) + 2 * sum(y(4:3:end-3)) + y(end));
end
