function indices = saddle(M)
indices = [];
[r, c] = size(M);
for cc = 1:c
    for rr = 1:r
        if (M(rr, cc) == min(M(:,cc))) && ...
                (M(rr, cc) == max(M(rr,:)))
            indices = [indices; rr cc];
        end
    end
end
                