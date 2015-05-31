function minclass = integerize(A)
maxn = max(A);
classes = {'uint8' 'uint16' 'uint32' 'uint64'};
minclass = 'NONE';
for ii = 1:4
    if maxn <= intmax(classes{ii})
        minclass = classes{ii};
        break;
    end
end
end