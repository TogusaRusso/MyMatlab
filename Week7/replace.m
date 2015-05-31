function w = replace(v, c1, c2)
w = v;
for ii = 1:length(v)
    rep = strfind(v{ii}, c1);
    if ~isempty(rep)
        for jj = 1:length(rep)
            w{ii}(rep(jj)) = c2;
        end
    end
end
end