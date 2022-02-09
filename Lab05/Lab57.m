clear;clc;
im = rgb2gray(double(imread('kaczki.jpg'))/255);
avgIm = .55;
bim = ~imbinarize(im, avgIm);
bim = imclose(bim, ones(8));
l = bwlabel(bim);
imshow(l == 2);
figure;
imshow(im .* (l == 2));