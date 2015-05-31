function m = June2015()
week = {'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'};
dayofweek = 1;
m = cell(30, 3);
for date = 1:30
    m{date, 1} = 'June';
    m{date, 2} = date;
    m{date, 3} = week{dayofweek};
    dayofweek = dayofweek + 1;
    if dayofweek == 8
        dayofweek = 1;
    end
end
    
end