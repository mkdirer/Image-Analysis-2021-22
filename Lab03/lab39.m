clear;clc;
im = rgb2gray(double(imread('zubr.jpg'))/255);
avgIm = .55;
bim = imbinarize(im, avgIm);
bim = ~bim;
fim = bim - imerode(bim, ones(3)); 
fim2 = imdilate(bim, ones(3)) - bim; 
f = -ones(3);
f(5) = 8;
fim = imfilter(bim, f); 
imshow(bim);
figure;
imshow(fim);
figure;
imshow(fim2);