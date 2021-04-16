function BP = back_projection(image, num_view_angles, view_angle_range)

%Example: 
%back_projection(image, 180, 180): Creates reconstructed image from 180 views in the range 0-180 degrees
%back_projection(image, 5, 45): Creates reconstructed image from 5 views in the range 0-45 degrees.

sinogram = create_sinogram(image, num_view_angles, view_angle_range);
no_projections = size(sinogram,1);
dtheta = floor(view_angle_range/num_view_angles);
num_angles = 0:dtheta:view_angle_range-1;
num_angles = (pi/180).*num_angles;  %Angles in radians

BP = zeros(no_projections, no_projections); %Back-projected image
centre_idx = floor(no_projections/2) + 1;  %centre idx of BP image
%Coordinates of BP image
[X,Y] = meshgrid(ceil(-no_projections/2):ceil(no_projections/2-1));

for i = 1:length(num_angles)
    %Coordinates to add to BP(i)
    bp_temp = zeros(no_projections, no_projections);
    rotate_xy = round(centre_idx + X*sin(num_angles(i)) + Y*cos(num_angles(i)));
    add_idx   = find((rotate_xy > 0) & (rotate_xy <= no_projections));
    new_xy = rotate_xy(add_idx);
    % Sum
    bp_temp(add_idx) = sinogram(new_xy(:),i);
    BP = BP + bp_temp;    
end
 BP = BP./length(num_angles);
end
 
 