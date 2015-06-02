function notreat = queen_check(board)
notreat = true;
for ii = 0:62
    x1 = mod(ii, 8);
    y1 = (ii - x1) / 8;
    if board(x1 + 1, y1 + 1)
        for jj = ii+1:63
            x2 = mod(jj, 8);
            y2 = (jj - x2) / 8;
            if board(x2 + 1, y2 + 1)
                if x1 == x2 || y1 == y2 || (x1 - x2) == (y1 - y2) || ...
                        (x1 - x2) == (y2 - y1)
                    notreat = false;
                    return;
                end
            end
        end
    end
end
