function outarray = apply_relu(inarray)
%APPLY_RELU This function applys relu to the inarray of size NxMxD, and
%returns the same. This basically makes any negative numbers in the input
%into 0. 
%   
%
outarray = inarray;  % setting the output array to be the same as the input
imsize = size(inarray);
x = imsize(1);
y = imsize(2);
z = imsize(3);
for i = 1: x
    for j = 1: y
        for k = 1: z
            if(inarray(i,j,k)< 0) %Checks for negative values and changes them to zero
            outarray(i,j,k) = 0;
            end
        end
    end
end

end

