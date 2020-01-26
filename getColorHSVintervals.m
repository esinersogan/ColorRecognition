function [hsvList,rowNames] = getColorHSVintervals(folderName, count)

    folder = folderName; 
    
    fileExtension = fullfile(folder, '*.png'); 
    files = dir(fileExtension);
    
    hueMinList = [];
    hueMaxList = [];
    satMinList = [];
    satMaxList = [];
    valMinList = [];
    valMaxList = [];
    
    hsvList = [];
    rowNames = [];
    
    for k = 1 : length(files)
        root = files(k).name;
        fileName = fullfile(folder, root);
        im = imread(fileName);
        
        hsv = rgb2hsv(im);
        
        hue = hsv(:,:,1);
        sat = hsv(:,:,2);
        val = hsv(:,:,3);
        
        huemin = min(hue(:));
        huemax = max(hue(:));
        huemean = mean2(hue);
        hueMinList = [hueMinList; huemin];
        hueMaxList = [hueMaxList; huemax];
        
        satmin = min(sat(:));
        satmax = max(sat(:));
        satmean = mean2(sat);
        satMinList = [satMinList; satmin];
        satMaxList = [satMaxList; satmax];
        
        valmin = min(val(:));
        valmax = max(val(:));
        valmean = mean2(val);
        valMinList = [valMinList; valmin];
        valMaxList = [valMaxList; valmax];
        
        hsvList = [hsvList; huemean satmean valmean count]; 
        rowNames = [rowNames; folder];
        count = count + 1;
        
    end

    hsvLow = [min(hueMinList); min(satMinList); min(valMinList)];
    hsvHigh = [max(hueMaxList); max(satMaxList); max(valMaxList)];
 
end