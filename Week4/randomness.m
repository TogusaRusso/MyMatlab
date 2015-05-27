function M = randomness(limit, n, m)
M = floor(limit * rand(n, m)  + 1);
end