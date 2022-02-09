clear;clc;
im = rgb2gray(double(imread('kaczki.jpg'))/255);
avgIm = .55;
bim = ~imbinarize(im, avgIm);
fim = imclose(bim, ones(8));
fim = bwmorph(fim, 'thin', inf);
imshow(fim);
