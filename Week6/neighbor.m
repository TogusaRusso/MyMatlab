function w = neighbor(v)
if(isvector(v) && length(v)>1)
    v2 = v(2 : end);
    v1 = v(1 : end-1);
    w = abs(v2-v1);
else
    w = [];
end 
end