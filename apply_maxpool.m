function outarray = apply_maxpool(inarray)
%APPLY_MAXPOOL This function takes in inarray and outputs the max of the
%pool of arrays. 
%
% First we take in the arrays, and sort them into 4 different classes; one
% for each corner of the larger array. Then, we use the ceiling function to find out which
% array it originated from. 
% 
% Finally, we take the sorted arrays and find the max between all 4
% different i,j,k,l values we sorted.

imsize = size(inarray);
outarray = zeros(imsize(1)/2, imsize(2)/2, imsize(3));
for k = 1:imsize(3)
    array1 = zeros(imsize(1)/2, imsize(2)/2);
    array2 = zeros(imsize(1)/2, imsize(2)/2); 
    array3 = zeros(imsize(1)/2, imsize(2)/2);
    array4 = zeros(imsize(1)/2, imsize(2)/2);
    for j = 1:imsize(2)
        for i = 1:imsize(1)

            newi = ceil(i/2); % will tell us in arrays 1,2,3,4, which location to put it in for max.
            newj = ceil(j/2);  

            if(mod(i,2) ~= 0)
                if(mod(j,2)~= 0)  
                array1(newi,newj) = inarray(i,j,k); % This part of the loop will apply a sort and create 4 different arrays.
                elseif(mod(j,2)== 0)
                array3(newi,newj) = inarray(i,j,k);
                end
            elseif(mod(i,2)== 0)
                if(mod(j,2)~= 0)
                array2(newi,newj) = inarray(i,j,k);
                elseif(mod(j,2)== 0)
                array4(newi,newj) = inarray(i,j,k);
                end     
            end
        end     
    end   
    max1 = max(array1,array2); %Gets the max of the arrays.
    max2 = max(array3,array4);
    outarray(:, :, k) = max(max1,max2);
end
end

