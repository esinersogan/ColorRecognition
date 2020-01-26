trainClassifier();

annotations = dataAnnotation("testdata");

predictedLabels = findColor("testdata");

trueEstimate = 0;
wrongEstimate = 0;

for i=1:size(annotations)
    if annotations(i) == predictedLabels(i)
        trueEstimate = trueEstimate + 1;
    else
        wrongEstimate = wrongEstimate + 1;
    end
end

correctClassificationRate = (trueEstimate/size(annotations,1))*100;



