clear;clc;
im = rgb2gray(double(imread('zubr.jpg'))/255);
fim = im;
avgIm = .55;
fim(fim >= avgIm) = 1;
fim(fim < avgIm) = 0; % wynik -> macierz double
%fim = im > avgIm; 
%fim = imbinarize(im, avgIm);
%fim = ~fim;
% avgIm = graythresh(im);
% rozniez jest argument 'adaptive' zamiast progu
% robi podobnie jak filtry - sprawdza jasnosc sasiedztwa punktu
imshow(im);
figure;
imhist(im);
figure;
imshow(fim);
figure;
imhist(fim);

