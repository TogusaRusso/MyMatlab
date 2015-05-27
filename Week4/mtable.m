function [mt, s] = mtable(n, m)
N = (1:n)';
M = (1:m);
mt = N * M;
s = sum(sum(mt));
end