function [predictedLabels] = findColor(folderName)

    predictedLabels = [];
    fileExtension = fullfile(folderName, '*.png'); 
    files = dir(fileExtension);
    
    for k = 1 : length(files)
        root = files(k).name;
        fileName = fullfile(folderName, root);
        im = imread(fileName);
        
        imtHsv = rgb2hsv(im);
        
        hl = [];
        sl = [];
        vl = [];
        
        [counts, binLocations] = imhist(imtHsv,4);
        
        maxCount = find(counts == max(counts));
        if maxCount == 1
            maxCount = 2;
        end
        
        tmp = zeros(size(imtHsv));
        for i=1:size(imtHsv,1)
            for j=1:size(imtHsv,2)
                
                if imtHsv(i,j)>binLocations(maxCount-1) && imtHsv(i,j)<=binLocations(maxCount)
                    tmp(i,j,:)=imtHsv(i,j,:);
                end
            end
        end
        
        h = tmp(:,:,1);
        s = tmp(:,:,2);
        v = tmp(:,:,3);
        
        hue = mean2(nonzeros(h));
        sat = mean2(nonzeros(s));
        val = mean2(nonzeros(v));
        
        predictedColor = nearestNeighbor(hue, sat, val);
        predictedLabels = [predictedLabels; predictedColor];
        
    end 
    
    predictedLabels = predictedLabels;
end