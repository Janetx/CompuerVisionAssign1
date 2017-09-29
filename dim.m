function [ dimIM ] = dim( image, fraction )
% scale every pixel in the image by fraction
dimIM=image(:, :, :)*fraction;

end

