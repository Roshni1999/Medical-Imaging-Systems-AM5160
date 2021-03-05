x = -2:.1:2;
y = -2:.1:2;
[X,Y] = meshgrid(x,y);

Z1 = sin(2*pi*X).*cos(4*pi*Y);
Z2 = sin(2*pi*(X + Y));

figure(1); hold on;
subplot (2,2,1)
planeimg1 = abs(Z1);
heatmap(planeimg)
colormap(gray);
xlabel('x'); ylabel('y');
title('sin(2*pi*X).*cos(4*pi*Y)')

subplot(2,2,2)
planeimg2 = abs(Z2); 
heatmap(planeimg2)
colormap(gray);
xlabel('x'); ylabel('y');
title('sin(2*pi*(X + Y))')

m = -7:1:7; n = -7:1:7;
[X,Y] = meshgrid(m,n);

Z3 = sin(pi/5*X).*cos(pi/5*Y);
Z4 = sin(1/5*X).*cos(1/5*Y);

subplot (2,2,3)
planeimg3 = abs(Z3);
heatmap(planeimg3)
colormap(gray);
xlabel('x'); ylabel('y'); 
title('sin(pi/5*m).*cos(pi/5*n)')

subplot (2,2,4)
planeimg4 = abs(Z4);
heatmap(planeimg4)
colormap(gray);
xlabel('x'); ylabel('y'); 
title('sin(1/5*m).*cos(1/5*n)')

%% Q5a.

N = 3.0;
x=linspace(-N, N);
y=x;
[X,Y]=meshgrid(x,y);
Z=(exp(-(pi*X.^2/4)-(pi*Y.^2/4)));
figure(2)
surf(X,Y,Z);
xlabel('x'); ylabel('y'); zlabel('z'); % labels
shading interp
axis tight

