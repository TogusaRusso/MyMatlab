function s = halfsum(A)
[rA, cA] = size(A);
s = 0;
for r = 1:rA
    if r <= cA
        for c = r:cA
            s = s + A(r, c);
        end
    end
end