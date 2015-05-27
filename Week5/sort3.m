function v = sort3(a, b, c)
if a <= b && a <= c
    if b<=c
        v = [a b c];
    else
        v = [a c b];
    end
elseif b <= a && b <= c
    if a<=c
        v = [b a c];
    else
        v = [b c a];
    end
else % c < a, b
    if a<=b
        v = [c a b];
    else
        v = [c b a];
    end
end
end