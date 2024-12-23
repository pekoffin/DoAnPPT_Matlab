function result = tichphan_simpson13fx(f, a, b, N)
    if N <= 0 || mod(N, 1) ~= 0
        error('N phai la so nguyen duong');
    end

    if mod(N, 2) ~= 0
        error('N phai la so chan.');
    end
    h = (b - a) / N;
    result = h / 3 * (f(a) + 4 * sum(arrayfun(f, linspace(a + h, b - h, N-1))) + 2 * sum(arrayfun(f, linspace(a + 2*h, b - 2*h, N/2-1))) + f(b));
end