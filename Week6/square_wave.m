function v = square_wave(n)
v = zeros(1, 1001); i = 0;
for t = 0:(4*pi)/1000:4*pi
    i = i + 1;
    for k = 1:n
        v(i) = v(i) + sin(t * (2 * k -1)) / (2 * k -1);
    end
end
