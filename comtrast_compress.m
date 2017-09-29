function [ contrastIM ] = comtrast_compress( image )
% take the square root of all the pixels in every color plane and add them
% to one plane(compress)
adjIM=(sqrt(double(image(:, :, 1))) + sqrt(double(image(:, :, 2))) + sqrt(double(image(:, :, 3))));

% scale every pixel to [0,1] intensity

contrastIM=(double(adjIM(:,:)))/(255)*4;
end

