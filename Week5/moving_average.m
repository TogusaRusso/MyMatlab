function average = moving_average(x)
persistent buffer;
if isempty(buffer)
    buffer = x;
else 
    buffer = [buffer x];
end;
if length(buffer) == 26
    buffer = buffer(2:end);
end
average = sum(buffer) / length(buffer);
end