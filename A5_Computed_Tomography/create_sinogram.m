function sinogram = create_sinogram(image, num_view_angles, view_angle_range)

%Example: 
%create_sinogram(image, 180, 180): Creates sinogram from 180 views in the range 0-180 degrees
%create_sinogram(image, 5, 45): Creates sinogram from 5 views in the range 0-45 degrees

dtheta = floor(view_angle_range/num_view_angles);
num_angles = 0:dtheta:view_angle_range-1;

%Increase boundary and add zero padding to avoid loss of image data on rotation
x = length(image);
y = sqrt(2)*x; 
extra = ceil(y)- x;
extended_image = zeros(x+extra, x+extra);
%centre image with extended boundary
extended_image(ceil(extra/2):(ceil(extra/2)+x-1), ceil(extra/2):(ceil(extra/2)+x-1)) = image;

sinogram = zeros(length(extended_image), length(num_angles));
for i = 1:length(num_angles)
    rotated_image = imrotate(extended_image, 90 - num_angles(i), 'bilinear', 'crop');
    sinogram(:,i) = (sum(rotated_image))';     
end
end
