function [ myrotateIM ] = myrotate( image )
%rotate 90 degrees clockwise
% reflect image about horizontal axis
I = image(end:-1:1,:,:);
% transpose 3 planes
T1=transpose(I(:, :, 1));
T2=transpose(I(:, :, 2));
T3=transpose(I(:, :, 3));
% combine 3 planes to one image
myrotateIM=cat(3, T1, T2, T3);


end

