function result = hamtichphan_hinhthangfx(f, a, b, N)
    if N <= 0 || mod(N, 1) ~= 0
        error('N phai la so nguyen duong');
    end
    h = (b - a) / N;
    result = 0.5 * h * (f(a) + 2 * sum(arrayfun(f, linspace(a + h, b - h, N-1))) + f(b));
end