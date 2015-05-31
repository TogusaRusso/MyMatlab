function out = censor(in, cens)
out = {};
index = 1;
for ii = 1:length(in)
    fnd = strfind(in{ii}, cens);
    if isempty(fnd)
        out{index} = in{ii};
        index = index + 1;
    end
end
end

        
