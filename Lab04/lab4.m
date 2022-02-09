clear;clc;
im = rgb2gray(double(imread('opera.jpg'))/255);
t = fft2(im); % tez reprezentuje czestotliwosci - obraz powielany wielokrotnie
A = abs(t); % reprezentuje czestotliwosci
A(200, 200) = 10^5;
[h, w] = size(im);
m = zeros(h, w);
m(400 : end - 400, 600 : end - 600) = 1; 
%m(200 : end - 200, 300 : end - 300) = 1; 
A = A .* fftshift(m);
lA = log(A);
maxA = log(max(A(:)));
phi = angle(t);
%phi(1, 1) = phi(1, 1) - pi;
%phi = fftshift(phi);
imshow(im);
figure;
imshow(phi, [-pi, pi]);
figure;
imshow(lA, [0, maxA]);
im_back = abs(ifft2(A .* exp(1i * phi)));
figure;
imshow(im_back);