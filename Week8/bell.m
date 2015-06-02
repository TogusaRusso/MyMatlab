function T = bell(n)
if n < 1 || n ~= round(n)
    T=[];
    return;
end
T = zeros(n, n);
T(1, 1) = 1;
for r = 2:n
    T(r,1) = T(1, r - 1);
    for c = 2:r
        T(r - c + 1, c) =  T(r - c + 2, c - 1) + T(r - c + 1, c - 1);
    end
end