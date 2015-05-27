function Q = quadrants(n)
X = ones(n);
Q = [X X .* 2; X .* 3 X .* 4];
end