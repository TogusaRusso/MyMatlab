function prime = myprime(n)
if n < 2
    prime = false;
elseif n == 2
    prime = true;
else
    prime = true;
    for d = 2:n-1
        if rem(n, d) == 0 
            prime = false;
            break;
        end
    end
end
end