load('cifar10testdata.mat');
load('CNNparameters.mat');
finalArray = zeros(10);
%size = sizeof(imageset);
%imageSetSize = size(4);
for i = 1:10000 
    inarray = double(imageset(:,:,:,i));

    outarray = apply_imnormalize(inarray);
    outarray = apply_convolve(outarray, filterbanks{1, 2}, biasvectors{1, 2});
    outarray = apply_relu(outarray);
    outarray = apply_convolve(outarray, filterbanks{1, 4}, biasvectors{1, 4});
    outarray = apply_relu(outarray);
    outarray = apply_maxpool(outarray);
    outarray = apply_convolve(outarray, filterbanks{1, 7}, biasvectors{1, 7});
    outarray = apply_relu(outarray);
    outarray = apply_convolve(outarray, filterbanks{1, 9}, biasvectors{1, 9});
    outarray = apply_relu(outarray);
    outarray = apply_maxpool(outarray);
    outarray = apply_convolve(outarray, filterbanks{1, 12}, biasvectors{1, 12});
    outarray = apply_relu(outarray);
    outarray = apply_convolve(outarray, filterbanks{1, 14}, biasvectors{1, 14});
    outarray = apply_relu(outarray);
    outarray = apply_maxpool(outarray);
    outarray = apply_fullconnect(outarray, filterbanks{1, 17}, biasvectors{1, 17});
    outarray = apply_softmax(outarray);

    maxVal = max(outarray);
    index = find(outarray == maxVal);
    %compare to see if we got the right class
    finalArray(trueclass(i),index) = finalArray(trueclass(i),index) + 1;
    disp(finalArray);
end

numerator = 0;
denominator = 0;
for i = 1:10
    numerator = numerator + finalArray(i,i);
    for j = 1:10
        denominator = denominator + finalArray(i,j);
    end
end

accuracy = numerator / denominator;
fprintf("Accuracy = %f", accuracy);

