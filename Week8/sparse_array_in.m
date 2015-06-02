function A = sparse_array_in(filename)
fid = fopen(filename, 'r');
if fid < 0
    A = [];
    return;
end
r = fread(fid, 1, 'uint32');
c = fread(fid, 1, 'uint32');
n = fread(fid, 1, 'uint32');
A = zeros(r, c);
for ii = 1:n
    rr = fread(fid, 1, 'uint32');
    cc = fread(fid, 1, 'uint32');
    A(rr, cc) = fread(fid, 1, 'double');
end
fclose(fid);
end 
