function result = tichphan_simpson38fx(fx, a, b, N)
    if mod(N, 3) ~= 0
        error('N phai la so chia het cho 3.');
    end
    if a >= b
        error('can a phai nho hon can b');
    end
    h = (b - a) / N;
    result = (3 * h / 8) * (fx(a) + 3 * sum(arrayfun(fx, linspace(a + h, b - h, N/3))) + 3 * sum(arrayfun(fx, linspace(a + 2*h, b - 2*h, N/3))) + 2 * sum(arrayfun(fx, linspace(a + 3*h, b - 3*h, N/3))) + fx(b));
end
