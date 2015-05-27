function o = older(y1, m1, d1, y2, m2, d2)
if y1 < y2
    o = 1;
elseif y1 > y2
    o = -1;
else %same year
    if m1 < m2
        o = 1;
    elseif m1 > m2
        o = -1;
    else %same month
        if d1 < d2
            o = 1;
        elseif d1 > d2
            o = -1;
        else %same day
            o = 0;
        end
    end
end  
end