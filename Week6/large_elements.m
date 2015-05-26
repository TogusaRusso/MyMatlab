function Y = large_elements(X)
[rX, cX] = size(X);
Y = [];
for r = 1:rX
    for c = 1:cX
        if X(r,c) > r + c
            Y = [Y; r c];
        end
    end
end
end
