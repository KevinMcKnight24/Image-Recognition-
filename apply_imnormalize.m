function outarray = apply_imnormalize(inarray)
%This function normalizes the image pixels so they range from -0.5-0.5
 
outarray = inarray;  % setting the output array to be the same as the input 
imsize = size(inarray);
x = imsize(1);
y = imsize(2);
z = imsize(3);
for i = 1: x
    for j = 1: y        %This function applys image normalization through the use of 3 for loops. 
                      
        for k = 1: z
            outarray(i,j,k) = inarray(i,j,k)/255.0 - 0.5;
        end
    end
end

end

