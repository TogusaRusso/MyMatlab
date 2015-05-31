function a = roman(r)
romann = {'I', 'II', 'III', 'IV', 'V', 'VI', 'VII',...
    'VIII', 'IX', 'X', 'XI', 'XII', 'XIII', 'XIV',...
    'XV', 'XVI', 'XVII', 'XVIII', 'XIX', 'XX'};
a = uint8(0);
for ii = 1:20
    if strcmp(r, romann{ii})
        a = uint8(ii);
        break
    end
end
end
            
    