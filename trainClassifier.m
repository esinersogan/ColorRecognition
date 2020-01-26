function [] = trainClassifier()

    global hsvListAll 
    hsvListAll = [];
    global rowNamesAll 
    rowNamesAll = [];
    
    [hsvList, rowNames] = getColorHSVintervals("black", 1);
    hsvListAll = [hsvListAll; hsvList];
    rowNamesAll = [rowNamesAll; rowNames];
    
    [hsvList, rowNames] = getColorHSVintervals("blue", size(rowNamesAll,1)+1);
    hsvListAll = [hsvListAll; hsvList];
    rowNamesAll = [rowNamesAll; rowNames];
    
    [hsvList, rowNames] = getColorHSVintervals("green", size(rowNamesAll,1)+1);
    hsvListAll = [hsvListAll; hsvList];
    rowNamesAll = [rowNamesAll; rowNames];
    
    [hsvList, rowNames] = getColorHSVintervals("orange", size(rowNamesAll,1)+1);
    hsvListAll = [hsvListAll; hsvList];
    rowNamesAll = [rowNamesAll; rowNames];
    
    [hsvList, rowNames] = getColorHSVintervals("red", size(rowNamesAll,1)+1);
    hsvListAll = [hsvListAll; hsvList];
    rowNamesAll = [rowNamesAll; rowNames];
    
    [hsvList, rowNames] = getColorHSVintervals("violet", size(rowNamesAll,1)+1);
    hsvListAll = [hsvListAll; hsvList];
    rowNamesAll = [rowNamesAll; rowNames];
    
    [hsvList, rowNames] = getColorHSVintervals("white", size(rowNamesAll,1)+1);
    hsvListAll = [hsvListAll; hsvList];
    rowNamesAll = [rowNamesAll; rowNames];
    
    [hsvList, rowNames] = getColorHSVintervals("yellow", size(rowNamesAll,1)+1);
    hsvListAll = [hsvListAll; hsvList];
    rowNamesAll = [rowNamesAll; rowNames];

end