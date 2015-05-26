function [p, k] = approximate_pi(delta)
p = 0; k = -1; s12k3 = -3 * sqrt(12);
while abs(p - pi) > delta
    k = k + 1;
    s12k3 = s12k3 / (-3);
    p = p + s12k3 / (2 * k + 1);
end
end
 