function [x] = calculateIDFT(X, N)
    for n = 0:N-1
        sum = 0;
        for k = 0:N-1
            e = exp((1i * 2 * pi * k * n) / N);
            y = X(k + 1) * e;
            sum = sum + y;
        end
        x(n + 1) = sum / N;
    end
end