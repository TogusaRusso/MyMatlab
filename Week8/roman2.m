function arabic = roman2(roman)
rvalues = {'CCC', 'CC', 'XC', 'C', 'XL', 'L', 'XXX', 'XX', 'IX', 'X', 'IV', 'V', 'III', 'II', 'I'};
avalues = [300, 200, 90, 100, 40, 50, 30, 20, 9, 10, 4, 5, 3, 2, 1];
for ii = 1:length(rvalues)
    find = strfind(roman, rvalues{ii});
    if ~isempty(find)
        %if length(find) > 1
        %   arabic = uint16(0);
        %    return;
        %end
        avalue = avalues(ii);
        find = find(1);
        if find == 1
            rvalue = -1;
            if (find + length(rvalues{ii})) - 1  < length(roman)
                rvalue = roman2(roman(find + length(rvalues{ii}):length(roman)));
            end
            if rvalue == 0
                arabic = uint16(0);
                return;
            else
                if rvalue == -1
                    rvalue = 0;
                end
                if avalue == 4 && rvalue == 1
                    arabic = uint16(0);
                    return;
                end;    
                if avalue == 9 && rvalue == 1
                    arabic = uint16(0);
                    return;
                end;    
                if avalue == 9 && rvalue == 5
                    arabic = uint16(0);
                    return;
                end;    
                if avalue == 40 && rvalue == 10
                    arabic = uint16(0);
                    return;
                end;    
                if avalue == 90 && rvalue == 10
                    arabic = uint16(0);
                    return;
                end;    
                if avalue == 30 && rvalue == 10
                    arabic = uint16(0);
                    return;
                end;    
                arabic = uint16(rvalue + avalue);
                if arabic > 399
                    arabic = uint16(0);
                end;
                return;
            end
        end
    end
end
arabic = uint16(0);
