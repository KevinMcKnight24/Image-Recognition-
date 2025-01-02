function outarray = apply_convolve(inarray, filterbank, biasvals)
%This function convolves the input array with 10 filters from a filter
%bank, then adds a bias value for the 10 channels.
% Setting the size of the array first, we go through a nested for loop to
% apply convolution filter 10x.

imsize = size(inarray); % the image size is the size of the array.
x = imsize(1);
y = imsize(2);
z = imsize(3);
outarray = double(zeros(x,y,10)); 
for l = 1:10
    for k = 1:z
        outarray(:,:,l) = outarray(:,:,l) + imfilter(inarray(:,:,k), filterbank(:,:,k,l), 'conv', 'same'); 
    end
    outarray(:,:,l) = outarray(:,:,l) + biasvals(l); % This applies the convolution filters bias vals.
end
end

