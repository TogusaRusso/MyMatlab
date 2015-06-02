function [row,col,numrows,numcols,summa] = maxsubsum(A)
[r, c] = size(A);
row = 1; col = 1; numrows = r; numcols = c;
summa = sum(sum(A));
for rr1 = 1:r
    for rr2 = rr1:r
        for cc1 = 1:c
            for cc2 = cc1:c
                s = sum(sum(A(rr1:rr2, cc1:cc2)));
                if s > summa
                    summa = s;
                    row = rr1; col = cc1;
                    numrows = (rr2 - rr1) + 1;
                    numcols = (cc2 - cc1) + 1;
                end              
            end
        end
    end
end

            
            
                    
                    

