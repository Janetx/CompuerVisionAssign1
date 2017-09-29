function [ shrinkIM ] = shrink(image)

% calculate the new dimension, reduce the length of both col and row by 2
factor=0.5;
scale = [factor factor];             
oldSize = size(image);                   
newSize = max(floor(scale.*oldSize(1:2)),1);  

% Compute the new index
rowIndex = min(round((1:newSize(1))./scale(1)),oldSize(1));
colIndex = min(round((1:newSize(2))./scale(2)),oldSize(2));

% Put new index into new image
shrinkIM = image(rowIndex,colIndex,:);

end

