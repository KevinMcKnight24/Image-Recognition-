function outarray = apply_fullconnect(inarray, filterbank, biasvals)
%APPLY_FULLCONNECT uses multiplies and sums the contents of an array with
%the contents of a same size filter array to get a scaler value. This
%scaler value is then summed with the corresponding bias value
imsize = size(inarray);
outarray = zeros(1,1,10);
for l = 1 : 10
    for i = 1 : imsize(1)
        for j = 1 : imsize(2)
            for k = 1 : imsize(3)
                % Multiply the values at the same location in both the
                % arrays and adds the sum to the outarray
                outarray(1,1,l) = outarray(1,1,l) + (inarray(i,j,k)*filterbank(i,j,k,l));
            end
        end
    end
    % Add corresponding bias value to outarray
    outarray(1,1,l) = outarray(1,1,l) + biasvals(l);
end
end

