clear;clc;
im = double(imread('ptaki.jpg'))/255;
gim = rgb2gray(im);
%for i = 1:3 
%    subplot(3, 2, 2 * i - 1);
%    imshow(im(:, :, i));
%    subplot(3, 2, 2 * i);
%    imhist(im(:, :, i));
%end
r = im(:, :, 1);
b = im(:, :, 3);
b = ~imbinarize(b, .6);
r(r < .15) = 1;
r = imbinarize(r, .3);
bim = b | r;
%imshow(bim);
bim = imclose(bim, ones(5));
bim = imopen(bim, ones(5));
imshow(bim);