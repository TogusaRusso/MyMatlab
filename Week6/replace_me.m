function w = replace_me(v,a,b,c)
if nargin > 1
    w = [];
    for x = v
        if x == a
            if nargin == 4
                w = [w b c];
            elseif nargin == 3
                w = [w b b];
            elseif nargin == 2
                w = [w 0 0];
            end
        else
            w = [w x];
        end
    end
end 
end