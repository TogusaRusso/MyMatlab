function result = sparse_array_out(A, filename)
fid = fopen(filename, 'w+');
if fid < 0
    result = false;
    return;
end
result = true;
[r, c] = size(A);
fwrite(fid, r, 'uint32');
fwrite(fid, c, 'uint32');
fwrite(fid, sum(sum(A ~= 0)), 'uint32');
for rr = 1:r
    for cc = 1:c
        if A(rr, cc) ~= 0 
            fwrite(fid, rr, 'uint32');
            fwrite(fid, cc, 'uint32');
            fwrite(fid, A(rr, cc), 'double');
        end
    end
end
           
fclose(fid);
end


