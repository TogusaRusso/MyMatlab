function ctxt = dial(txt)
base = 'ABCDEFGHIJKLMNOPRSTUVWXY()-#*0123456789 ';
code = '222333444555666777888999   #*0123456789 ';
ctxt = txt;
for cc = 1:length(txt);
    bb = strfind(base, txt(cc));
    if ~isempty(bb)
        ctxt(cc) = code(bb);
    else
        ctxt = [];
        break;
    end
end
    
    
end