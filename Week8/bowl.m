function score = bowl(G)
score = 0;
frame = 1;
attempt = 1;
pins = 10;
index = 0;
for ii = 1:length(G)
    g = G(ii);
    if  g > 10 || g < 0 
        score = -1;
        break;
    end
    if attempt == 1 && g == pins
        %%strike
        if ii+2 > length(G)
            score = -1;
            break;
        end
        score = score + g + G(ii + 1) + G(ii + 2);
        index = ii + 2;
        if frame < 10
            frame = frame + 1;
        else
            attempt = 3;
            break;
        end
    elseif attempt == 1
        pins = pins - g;
        score = score + g;
        index = ii;
        attempt = attempt + 1;
    elseif attempt == 2 && g == pins
        %spare
        if ii+1 > length(G)
            score = -1;
            break;
        end
        score = score + g + G(ii+1);
        index = ii + 1;
        if frame < 10
            attempt = 1;
            frame = frame + 1;
            pins = 10;
        else
            attempt = 3;
            break;
        end
    elseif attempt == 2 
        if g > pins
            score = -1;
            break;
        end
        score = score + g;
        index = ii;
        if frame < 10
            attempt = 1; 
            frame = frame + 1;
            pins = 10;
        else
            attempt = 3;
            %pins = pins - g;
            break;
        end
    else
        score = score + g;
        index = ii;
    end
end
if frame ~= 10 || attempt ~= 3 || index ~= length(G)
    score = -1;
end
    
        
        
        
        
        
            
            
