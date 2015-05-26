function n = one_per_n(x)
n = 0;
while n <= 10000
    n = n + 1;
    s = 0;
    for j = 1:n
        s = s + (1 / j);
    end
    if s >= x
        break;
    end
end
if n > 10000
    n = -1;
end
end
    