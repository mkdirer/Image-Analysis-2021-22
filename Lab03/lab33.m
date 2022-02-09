clear;clc;
im = rgb2gray(double(imread('zubr.jpg'))/255);
f = -ones(3);
f(5) = 9;
fim = imfilter(im, f);
imshow(im);
figure;
imshow(fim);
