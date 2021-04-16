%Phantom
I1 = phantom('Modified Shepp-Logan',200);

%%
sinogram_180_180 = create_sinogram(I1,180, 180);
bp_180_180 = back_projection(I1, 180, 180);     %Reconstruct image from 180 views in the range 0-180 degrees
sinogram_120_180 = create_sinogram(I1,120, 180);
bp_120_180 = back_projection(I1, 120, 180);     %Reconstruct image from 120 views in the range 0-180 degrees
sinogram_45_180 = create_sinogram(I1,45, 180);
bp_45_180 = back_projection(I1, 45, 180);       %Reconstruct image from 45 views in the range 0-180 degrees
sinogram_10_180 = create_sinogram(I1,10, 180);
bp_10_180 = back_projection(I1, 10, 180);       %Reconstruct image from 10 views in the range 0-180 degrees

figure(1)
subplot(4,2,1); imshow(sinogram_180_180, [], 'XData', [0 1], 'YData', [0 1]); title('Sinogram, 180 views [0,180)')
subplot(4,2,2); imshow(bp_180_180, []); title('Reconstructed image, 180 projections [0,180)')
subplot(4,2,3); imshow(sinogram_120_180, [], 'XData', [0 1], 'YData', [0 1]); title('Sinogram, 120 views [0,180)')
subplot(4,2,4); imshow(bp_120_180, []); title('Reconstructed image, 120 projections [0,180)')
subplot(4,2,5); imshow(sinogram_45_180, [], 'XData', [0 1], 'YData', [0 1]); title('Sinogram, 45 views [0,180)')
subplot(4,2,6); imshow(bp_45_180, []); title('Reconstructed image, 45 projections [0,180)')
subplot(4,2,7); imshow(sinogram_10_180, [], 'XData', [0 1], 'YData', [0 1]); title('Sinogram, 10 views [0,180)')
subplot(4,2,8); imshow(bp_10_180, []); title('Reconstructed image, 10 projections [0,180)')
%%
sinogram_90_90 = create_sinogram(I1, 90, 90);
bp_90_90 = back_projection(I1, 90, 90);     %Reconstruct image from 90 views in the range 0-90 degrees
sinogram_45_90 = create_sinogram(I1, 45, 90);
bp_45_90 = back_projection(I1, 45, 90);     %Reconstruct image from 45 views in the range 0-90 degrees
sinogram_20_90 = create_sinogram(I1,20, 90);
bp_20_90 = back_projection(I1, 20, 90);     %Reconstruct image from 20 views in the range 0-90 degrees

figure(2)
subplot(3,2,1); imshow(sinogram_90_90, [], 'XData', [0 1], 'YData', [0 1]); title('Sinogram, 90 views [0,90)')
subplot(3,2,2); imshow(bp_90_90, []); title('Reconstructed image, 90 projections [0,90)')
subplot(3,2,3); imshow(sinogram_45_90, [], 'XData', [0 1], 'YData', [0 1]); title('Sinogram, 45 views [0,90)')
subplot(3,2,4); imshow(bp_45_90, []); title('Reconstructed image, 45 projections [0,90)')
subplot(3,2,5); imshow(sinogram_20_90, [], 'XData', [0 1], 'YData', [0 1]); title('Sinogram, 20 views [0,90)')
subplot(3,2,6); imshow(bp_20_90, []); title('Reconstructed image, 20 projections [0,90)')
%%
sinogram_30_30 = create_sinogram(I1, 30, 30);
bp_30_30 = back_projection(I1, 30, 30);     %Reconstruct image from 30 views in the range 0-30 degrees
sinogram_20_30 = create_sinogram(I1, 20, 30);
bp_20_30 = back_projection(I1, 20, 30);     %Reconstruct image from 20 views in the range 0-30 degrees
sinogram_10_30 = create_sinogram(I1, 10, 30);
bp_10_30 = back_projection(I1, 10, 30);     %Reconstruct image from 10 views in the range 0-30 degrees

figure(3)
subplot(3,2,1); imshow(sinogram_30_30, [], 'XData', [0 1], 'YData', [0 1]); title('Sinogram, 30 views [0,30)')
subplot(3,2,2); imshow(bp_30_30, []); title('Reconstructed image, 30 projections [0,30)')
subplot(3,2,3); imshow(sinogram_20_30, [], 'XData', [0 1], 'YData', [0 1]); title('Sinogram, 20 views [0,30)')
subplot(3,2,4); imshow(bp_20_30, []); title('Reconstructed image, 20 projections [0,30)')
subplot(3,2,5); imshow(sinogram_10_30, [], 'XData', [0 1], 'YData', [0 1]); title('Sinogram, 10 views [0,30)')
subplot(3,2,6); imshow(bp_10_30, []); title('Reconstructed image, 10 projections [0,30)')

%%
%Image of Lena
lena = imread('Lenna_RGB.png');
lena_gray = rgb2gray(lena);
image_lena = im2double(lena_gray);
figure(4); imshow(image_lena);

lena_sinogram_180_180 = create_sinogram(image_lena,180, 180);
lena_bp_180_180 = back_projection(image_lena, 180, 180);     %Reconstruct image from 180 views in the range 0-180 degrees
lena_sinogram_120_180 = create_sinogram(image_lena,120, 180);
lena_bp_120_180 = back_projection(image_lena, 120, 180);     %Reconstruct image from 120 views in the range 0-180 degrees
lena_sinogram_45_180 = create_sinogram(image_lena,45, 180);
lena_bp_45_180 = back_projection(image_lena, 45, 180);       %Reconstruct image from 45 views in the range 0-180 degrees
lena_sinogram_10_180 = create_sinogram(image_lena,10, 180);
lena_bp_10_180 = back_projection(image_lena, 10, 180);       %Reconstruct image from 10 views in the range 0-180 degrees

figure(5)
subplot(4,2,1); imshow(lena_sinogram_180_180, [], 'XData', [0 1], 'YData', [0 1]); title('Sinogram, 180 views [0,180)')
subplot(4,2,2); imshow(lena_bp_180_180, []); title('Reconstructed image, 180 projections [0,180)')
subplot(4,2,3); imshow(lena_sinogram_120_180, [], 'XData', [0 1], 'YData', [0 1]); title('Sinogram, 120 views [0,180)')
subplot(4,2,4); imshow(lena_bp_120_180, []); title('Reconstructed image, 120 projections [0,180)')
subplot(4,2,5); imshow(lena_sinogram_45_180, [], 'XData', [0 1], 'YData', [0 1]); title('Sinogram, 45 views [0,180)')
subplot(4,2,6); imshow(lena_bp_45_180, []); title('Reconstructed image, 45 projections [0,180)')
subplot(4,2,7); imshow(lena_sinogram_10_180, [], 'XData', [0 1], 'YData', [0 1]); title('Sinogram, 10 views [0,180)')
subplot(4,2,8); imshow(lena_bp_10_180, []); title('Reconstructed image, 10 projections [0,180)')

%%
% MATLAB reconstruction of lena
[R,xp] = radon(image_lena, 0:179);
IRF = iradon(R,0:179,'linear','Ram-Lak');
figure(6); imshow(IRF, []); title('Back-projection using iradon with Ram-Lak filter')
%%

