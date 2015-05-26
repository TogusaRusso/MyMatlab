function [even, odd] = separate_by_two(A)
odd = A(mod(A, 2) == 1)';
even = A(mod(A, 2) == 0)';
end