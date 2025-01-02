function outarray = apply_softmax(inarray)
%APPLY_SOFTMAX 
%softmax takes in a vector of real numbers and converts them into an array
%of numbers which can bee viewed as probabilities between 0-1, and sum up
%to 1. 
% setting the output array to be the same as the input
imsize = size(inarray);
outarray = zeros(imsize);
summation = 0;
%calculating alpha value by taking max of array values
alpha = max(inarray(1,1,:));
%looping through elements to get summation of exponentials
for i = 1: imsize(3)
    exponential = exp(inarray(1,1,i) - alpha);
    summation = summation + exponential;
end
%second loop to divide individual exponentials by summation
for i = 1: imsize(3)
    exponential = exp(inarray(1,1,i) - alpha);
    outarray(1,1,i) = exponential / summation;
end

end