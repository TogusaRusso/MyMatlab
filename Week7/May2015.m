function m = May2015()
week = {'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'};
dayofweek = 5;
m = struct('month', {}, 'date', {}, 'day', {});
for date = 1:31
    m(date).month = 'May';
    m(date).date = date;
    m(date).day = week{dayofweek};
    dayofweek = dayofweek + 1;
    if dayofweek == 8
        dayofweek = 1;
    end
end
    
end