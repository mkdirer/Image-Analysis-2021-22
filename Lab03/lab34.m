clear;clc;
im = rgb2gray(double(imread('zubr.jpg'))/255);
fim = medfilt2(im, [3, 3]);
imshow(im);
figure;
imshow(fim);
