function p = prime_pairs(n)
p = -1;
for pp = primes(100000)
    if isprime(pp + n)
        p = pp;
        return;
    end
end