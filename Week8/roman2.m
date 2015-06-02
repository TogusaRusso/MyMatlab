function arabic = roman2(roman)
arabic = uint16(0);
for ii = 1:399
    if strcmp(roman, to_roman(ii))
        arabic = uint16(ii);
        return;
    end
end
function roman = to_roman(arabic)
rvalues = {'CCC', 'CC', 'C' 'XC', 'L', 'XL', 'XXX', 'XX', 'X',...
    'IX', 'V', 'IV', 'III', 'II', 'I'};
avalues = [300, 200, 100, 90, 50, 40, 30, 20, 10, 9, 5, 4, 3, 2, 1];
for ii = 1:length(rvalues)
    if avalues(ii) <= arabic
        roman = strcat(rvalues{ii}, to_roman(arabic - avalues(ii)));
        return
    end
end
roman = '';

