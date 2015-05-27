function type = classify(x)
[a, b] = size(x);
if a == 0 || b == 0
    type = -1;
elseif a == 1 && b == 1
    type = 0;
elseif a > 1 && b == 1
    type = 1;
elseif a == 1 && b > 1
    type = 1;
else
    type = 2;
end    
end