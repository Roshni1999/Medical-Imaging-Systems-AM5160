%% Q3 a.
x = -2:.1:2; y = -2:.1:2;
[X,Y] = meshgrid(x,y);

figure; hold on;
Z = sin(2*pi*X).*cos(4*pi*Y);

min_x = min(min(x)); min_y = min(min(y));
max_x = max(max(x)); max_y = max(max(y));
 
planeimg = abs(Z); % image data as a plane.
surf(X, Y, Z); %normal surface plot.
imgzposition = -10; % z position of the image plane.
 
surf([min_x max_x],[min_y max_y],repmat(imgzposition, [2 2]),planeimg,'facecolor','texture') % plot the image plane
 
colormap(gray);
view(45,30); %view angle

xlabel('x'); ylabel('y'); zlabel('z'); % labels 

%% Q3 b.
x = -2:.1:2; y = -2:.1:2;
[X,Y] = meshgrid(x,y);

figure; hold on;
Z = sin(2*pi*(X + Y));
min_x = min(min(x)); min_y = min(min(y));
max_x = max(max(x)); max_y = max(max(y));
 
planeimg = abs(Z); % image data as a plane.
surf(X, Y, Z); %normal surface plot.
imgzposition = -10; % z position of the image plane.
 
surf([min_x max_x],[min_y max_y],repmat(imgzposition, [2 2]),planeimg,'facecolor','texture') % plot the image plane
 
colormap(gray);
view(45,30); %view angle

xlabel('x'); ylabel('y'); zlabel('z'); % labels 

%% Q3 c i.
%Considering m, n as discrete variables with step size of 1 unit
m = -7:1:7; n = -7:1:7;
[X,Y] = meshgrid(m,n);

figure; hold on;
Z = sin(pi/5*X).*cos(pi/5*Y);

min_x = min(min(x)); min_y = min(min(y));
max_x = max(max(x)); max_y = max(max(y));
 
planeimg = abs(Z); % image data as a plane.
surf(X, Y, Z); %normal surface plot.
imgzposition = -10; % z position of the image plane.
 
surf([min_x max_x],[min_y max_y],repmat(imgzposition, [2 2]),planeimg,'facecolor','texture') % plot the image plane
 
colormap(gray);
view(45,30); %view angle

xlabel('x'); ylabel('y'); zlabel('z'); % labels 
title('1 pixel = 1 unit')

%% Q3 c ii.
%Considering m, n as discrete variables with step size 2 units
m = -7:2:7; n = -7:2:7;
[X,Y] = meshgrid(m,n);

figure; hold on;
Z = sin(pi/5*X).*cos(pi/5*Y);

min_x = min(min(x)); min_y = min(min(y));
max_x = max(max(x)); max_y = max(max(y));
 
planeimg = abs(Z); % image data as a plane.
surf(X, Y, Z); %normal surface plot.
imgzposition = -10; % z position of the image plane.
 
surf([min_x max_x],[min_y max_y],repmat(imgzposition, [2 2]),planeimg,'facecolor','texture') % plot the image plane
 
colormap(gray);
view(45,30); %view angle

xlabel('x'); ylabel('y'); zlabel('z'); % labels
title('1 pixel = 2 units')

%% Q3 d i.
%Considering m, n as discrete variables with step size of 1 unit
m = -7:1:7; n = -7:1:7;
[X,Y] = meshgrid(m,n);

figure; hold on;
Z = sin(1/5*X).*cos(1/5*Y);

min_x = min(min(x)); min_y = min(min(y));
max_x = max(max(x)); max_y = max(max(y));
 
planeimg = abs(Z); % image data as a plane.
surf(X, Y, Z); %normal surface plot.
imgzposition = -10; % z position of the image plane.
 
surf([min_x max_x],[min_y max_y],repmat(imgzposition, [2 2]),planeimg,'facecolor','texture') % plot the image plane
 
colormap(gray);
view(45,30); %view angle

xlabel('x'); ylabel('y'); zlabel('z'); % labels 
title('1 pixel = 1 unit')

%% Q3 d ii.
%Considering m, n as discrete variables with step size 2 units
m = -7:2:7; n = -7:2:7;
[X,Y] = meshgrid(m,n);

figure; hold on;
Z = sin(1/5*X).*cos(1/5*Y);

min_x = min(min(x)); min_y = min(min(y));
max_x = max(max(x)); max_y = max(max(y));
 
planeimg = abs(Z); % image data as a plane.
surf(X, Y, Z); %normal surface plot.
imgzposition = -10; % z position of the image plane.
 
surf([min_x max_x],[min_y max_y],repmat(imgzposition, [2 2]),planeimg,'facecolor','texture') % plot the image plane
 
colormap(gray);
view(45,30); %view angle

xlabel('x'); ylabel('y'); zlabel('z'); % labels
title('1 pixel = 2 units')
%%

