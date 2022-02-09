clear;clc;
im = rgb2gray(double(imread('kaczki.jpg'))/255);
avgIm = .55;
bim = ~imbinarize(im, avgIm);
bim = imclose(bim, ones(8));
bim = bwmorph(bim, 'thicken', inf);
l = bwlabel(bim);
imshow(label2rgb(l));