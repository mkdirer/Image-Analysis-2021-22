clear;clc;
im = rgb2gray(double(imread('zubr.jpg'))/255);
avgIm = .55;
bim = imbinarize(im, avgIm);
bim = ~bim;
fim = medfilt2(bim, [3, 3]);
imshow(bim);
figure;
imshow(fim);
