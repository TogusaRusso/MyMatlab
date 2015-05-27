function M = identity(n)
M = zeros(n, n);
M(1:n+1:end) = 1;
end
