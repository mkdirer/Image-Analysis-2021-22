clear;clc;
im = rgb2gray(double(imread('kaczki.jpg'))/255);
avgIm = .55;
bim = ~imbinarize(im, avgIm);
bim = imclose(bim, ones(8));
d = bwdist(~bim); 
imshow(d / max(d(:)));