function both = movies(hr1, min1, durmin1, hr2, min2, durmin2)
tmin1e = 60 * hr1 + min1 + durmin1;
tmin2b = 60 * hr2 + min2;
if tmin2b < tmin1e
    both = 0;
elseif tmin2b > (tmin1e + 30)
    both = 0;
else
    both = 1;
end
end
