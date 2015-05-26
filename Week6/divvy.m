function B = divvy(A, k)
B = A;
B(mod(B, k) ~= 0) = A(mod(A, k) ~= 0) * k;