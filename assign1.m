%cmpt412-assignment1
%author: Janet Xuan


% image=imread('ThreePenniesAreduced.jpg');
image = zeros(6,6,3);
image(:,:,1)=magic(6);
image(:,:,2)=magic(6)';
image(:,:,3)=ones(6)/2;
image=image/max(image(:));

figure
imshow(image)
title('Original Image')

%%%%%%%%%%%%%%%    subimage         %%%%%%%%%%%%%%%%
% [subimage] = subsample(image, 0.3);
% figure
% imshow(subimage)
% title('subimage IMage')

%%%%%%%%%%%%%%%    shrink        %%%%%%%%%%%%%%%%%%
%  [shrinkIM] = shrink(image);
%  figure
%  imshow(shrinkIM)
%  title('shrink IMage')

%%%%%%%%%%%%%%%    zoom        %%%%%%%%%%%%%%%%%%
% [zoomIM] = zoom(image);
% figure
% imshow(zoomIM)
% title('zoom IMage')

%%%%%%%%%%%%%%%    rotate      %%%%%%%%%%%%%%%%%
[myrotateIM] = myrotate(image);
figure
imshow(myrotateIM)
title('rotate IMage 90 degrees clockwise')


%%%%%%%%%%%%%%%    reflect     %%%%%%%%%%%%%%%%%
% [reflectIM] = reflect(image);
% figure
% imshow(reflectIM)
% title('reflect IMage about the vertical axis')

%%%%%%%%%%%%%%%    dim         %%%%%%%%%%%%%%%
% [dimIM] = dim(image, 0.3);
% figure
% imshow(dimIM)
% title('darker Image by the fraction')

%%%%%%%%%%%%%%%    contrast_compress    %%%%%%%%%
[ contrastIM ] = comtrast_compress( image );
figure
imshow(contrastIM)
title('comtrast and compress image')


