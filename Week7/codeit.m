function ctxt = codeit(txt)
base = [char(65:90), char(97:122)];
code = [char(90:-1:65), char(122:-1:97)];
ctxt = txt;
for cc = 1:length(txt);
    bb = strfind(base, txt(cc));
    if ~isempty(bb)
        ctxt(cc) = code(bb);
    end
end
    
    
end