function [annotationLabels] = dataAnnotation(folderName)

    labels = [];
    fileExtension = fullfile(folderName, '*.png'); 
    files = dir(fileExtension);
    
    for k = 1 : length(files)
        root = files(k).name;
        filename = convertCharsToStrings(root);
        
        result = strsplit(filename, '_');
        result = strsplit(result(2), '.');
        
        label = regexprep(result(1),'\d+$','');
        labels = [labels; label];
        
    end 
    
    annotationLabels = labels;
end