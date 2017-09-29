function [ subimage ] = subsample(image, factor)

% calculate the new dimension, make each new pixel = old pixel * factor
scale = [sqrt(factor) sqrt(factor)];              
oldSize = size(image);                   
newSize = max(floor(scale.*oldSize(1:2)),1); 

% Compute the new index

rowIndex = min(round((1:newSize(1))./scale(1)),oldSize(1));
colIndex = min(round((1:newSize(2))./scale(2)),oldSize(2));

% Put new index into new image
subimage = image(rowIndex,colIndex,:);

return;

end

