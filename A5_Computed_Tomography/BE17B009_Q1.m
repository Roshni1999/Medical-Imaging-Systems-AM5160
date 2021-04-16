%1. Use MATLAB to illustrate projection and reconstruction using different parameter settings
% a. More vs. less projection angles    b. Different filters

%% Create phantoms
I1 = phantom('Modified Shepp-Logan',200);
I2 = phantom('Shepp-Logan', 200);

figure(1)
subplot(1,2,1)
imshow(I1); title('Modified Shepp-Logan')
subplot(1,2,2)
imshow(I2); title('Shepp-Logan')

%% RADON:Generate projection data from a phantom
%Image: Modified Shepp-Logan
[R,xp] = radon(I1,[0 30 45 90 120, 180]); %Projections at theta = 0, 30, 45, 90, 120, 180

figure(2);
f = figure(2);
p = uipanel('Parent',f,'BorderType','none'); p.Title = 'Projections using radon()'; 
p.TitlePosition = 'centertop'; p.FontSize = 12; p.FontWeight = 'bold';
subplot(2,3,1, 'Parent',p); plot(xp,R(:,1),'LineWidth',1); title('0 degrees')
subplot(2,3,2, 'Parent',p); plot(xp,R(:,2),'LineWidth',1); title('30 degrees')
subplot(2,3,3, 'Parent',p); plot(xp,R(:,3),'LineWidth',1); title('45 degrees')
subplot(2,3,4, 'Parent',p); plot(xp,R(:,4),'LineWidth',1); title('90 degrees')
subplot(2,3,5, 'Parent',p); plot(xp,R(:,5),'LineWidth',1); title('120 degrees')
subplot(2,3,6, 'Parent',p); plot(xp,R(:,6),'LineWidth',1); title('180 degrees')

theta1 = 0:179; theta2 = 0:10:179; theta3 = 0:30:179;
[R1,xp1] = radon(I1,theta1);
[R2,xp2] = radon(I1,theta2);
[R3,xp3] = radon(I1,theta3);
figure(3); 
subplot(1,3,1);imshow(R1,[],'Xdata',theta1,'Ydata',xp1); xlabel('\theta (degrees)'); ylabel('x'''); title('Sinogram: 180 projections')
subplot(1,3,2);imshow(R2,[],'Xdata',theta2,'Ydata',xp2); xlabel('\theta (degrees)'); ylabel('x'''); title('Sinogram: 18 projections')
subplot(1,3,3);imshow(R3,[],'Xdata',theta3,'Ydata',xp3); xlabel('\theta (degrees)'); ylabel('x'''); title('Sinogram: 6 projections')

%% IRADON: Reconstruct phantom from measured projections by back-projection
IR1 = iradon([R(:,1) R(:,1)], [0 0])/2;
IR2 = iradon([R(:,2) R(:,2)], [30 30])/2;
IR3 = iradon([R(:,3) R(:,3)], [45 45])/2;
IR4 = iradon([R(:,4) R(:,4)], [90 90])/2;
IR5 = iradon([R(:,5) R(:,5)], [120 120])/2;
IR6 = iradon([R(:,6) R(:,6)], [180 180])/2;
figure(4);
f = figure(4);
p = uipanel('Parent',f,'BorderType','none'); p.Title = 'Inverse Radon Transforms'; 
p.TitlePosition = 'centertop'; p.FontSize = 12; p.FontWeight = 'bold';
subplot(2,3,1, 'Parent',p); imshow(IR1, []); title('0 degrees')
subplot(2,3,2, 'Parent',p); imshow(IR2, []); title('30 degrees')
subplot(2,3,3, 'Parent',p); imshow(IR3, []); title('45 degrees')
subplot(2,3,4, 'Parent',p); imshow(IR4, []); title('90 degrees')
subplot(2,3,5, 'Parent',p); imshow(IR5, []); title('120 degrees')
subplot(2,3,6, 'Parent',p); imshow(IR6, []); title('180 degrees')

II1 = iradon(R1,1);
II2 = iradon(R2,10);
II3 = iradon(R3,30);
figure(5)
f = figure(5);
p = uipanel('Parent',f,'BorderType','none'); p.Title = 'Back projection from different number of projections'; 
p.TitlePosition = 'centertop'; p.FontSize = 12; p.FontWeight = 'bold';
subplot(2,3,1, 'Parent',p); imshow(II1, []); title('180 projections')
subplot(2,3,2, 'Parent',p); imshow(II2, []); title('18 projections')
subplot(2,3,3, 'Parent',p); imshow(II3, []); title('6 projections')

IRF1 = iradon(R1,0:179,'linear','none');
IRF2 = iradon(R1,0:179,'linear','Ram-Lak');
IRF3 = iradon(R1,0:179,'linear','Shepp-Logan');
IRF4 = iradon(R1,0:179,'linear','Cosine');
IRF5 = iradon(R1,0:179,'linear','Hamming');
IRF6 = iradon(R1,0:179,'linear','Hann');
figure(6)
f = figure(6);
p = uipanel('Parent',f,'BorderType','none'); p.Title = 'Inverse Radon Transforms using filters'; 
p.TitlePosition = 'centertop'; p.FontSize = 12; p.FontWeight = 'bold';
subplot(2,3,1, 'Parent',p); imshow(IRF1, []); title('No filter')
subplot(2,3,2, 'Parent',p); imshow(IRF2, []); title('Ram-Lak')
subplot(2,3,3, 'Parent',p); imshow(IRF3, []); title('Shepp-Logan')
subplot(2,3,4, 'Parent',p); imshow(IRF4, []); title('Cosine')
subplot(2,3,5, 'Parent',p); imshow(IRF5, []); title('Hamming')
subplot(2,3,6, 'Parent',p); imshow(IRF6, []); title('Hann')

%%