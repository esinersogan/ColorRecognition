function [predictedColor] = nearestNeighbor(hue, sat, val)

    hsvListAll = getGlobalhsvListAll;
    rowNamesAll = getGlobalrowNamesAll;
    
    absoluteDiff = [];
    
    for i=1:size(hsvListAll)
        absoluteDiff = [absoluteDiff; (abs(hue-hsvListAll(i,1)) + abs(sat-hsvListAll(i,2)) + abs(val-hsvListAll(i,3)))];
    end
    
    minDiffIndex = find(absoluteDiff == min(absoluteDiff));
    
    predictedColor = rowNamesAll(minDiffIndex);
end

