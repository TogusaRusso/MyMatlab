function n = letter_counter(filename)
fid = fopen(filename, 'rt');
if fid < 0
    n = -1;
    return;
end
n = 0;
line = fgets(fid);
while ischar(line)
    n = n + sum(isletter(line));
    line = fgets(fid);
end
fclose(fid);
end