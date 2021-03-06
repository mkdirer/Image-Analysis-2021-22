clear;clc;
im = imread('zubr.jpg');
im = double(im)/255;
im = rgb2gray(im);
subplot(3, 3, 1);
imhist(im);
subplot(3, 3, 2);
imshow(im);
% 0.2 -> parametr zmiany jasnosci -> miedzy (-1, 1)
im_b = im + 0.2;
im_b(im_b > 1) = 1;
im_b(im_b < 0) = 0;
subplot(2, 2, 3);
imhist(im_b);
subplot(2, 2, 4);
imshow(im_b);
% .5 -> parametr zmiany kontrastu -> miedzy (0, +inf)
%im_c = im * .5;
%subplot(2, 2, 3);
%imhist(im_c);
%subplot(2, 2, 4);
%imshow(im_c);
%im_c_2 = .5 * (im - .5) + .5;
%im_c_2(im_c_2 > 1) = 1;
%im_c_2(im_c_2 < 0) = 0;
%subplot(2, 2, 3);
%imhist(im_c_2);
%subplot(2, 2, 4);
%imshow(im_c_2);
%im_d = im .^ 2;
%subplot(3, 3, 4);
%imhist(im_d);
%subplot(3, 3, 5);
%imshow(im_d);
x = 0: 1/255 : 1;
y = x;
subplot(3, 3, 3);
plot(x, y);
xlim([0. 1]);
ylim([0, 1]);
axis equal;
y = x + .1;
y(y > 1) = 1;
y(y < 0) = 0;
subplot(3, 3, 6); % wykres z y przesunietym - zmiana jasnosci
plot(x, y);
xlim([0. 1]);
ylim([0, 1]);
axis equal;
%x_c = 0 : 1/255 : 1;
%y_c = x_c;
%subplot(3, 3, 3); % wykres bez zmian
%plot(x_c, y_c);
%y_c = x_c .* 0.1;
%y_c(y_c > 1) = 1;
%y_c(y_c < 0) = 0;
%subplot(3, 3, 6); 
%plot(x_c, y_c);
%xlim([0. 1]);
%ylim([0, 1]);
%axis equal;
%x_g = 0 : 1/255 : 1;
%y_g = x_g;
%subplot(3, 3, 3); 
%plot(x_g, y_g);
%y_g = x_g .^ 4;
%subplot(3, 3, 6); 
%plot(x_g, y_g);
%xlim([0. 1]);
%ylim([0, 1]);
%axis equal;
%im_all = 2 .* im .^ 4 + 0.3;
% plutujemy
%subplot(3, 3, 4);
%imhist(im_all);
%subplot(3, 3, 5);
%imshow(im_all);
%x_all = 0 : 1/255 : 1;
%y_all = x_all;
%subplot(3, 3, 3); 
%plot(x_all, y_all);
%y_all = 2 .* x_all .^ 4 + 0.3;
%subplot(3, 3, 6); 
%plot(x_all, y_all);
%xlim([0. 1]);
%ylim([0, 1]);
%axis equal;
%eq_im = histeq(im);
%subplot(3, 3, 3);
%imhist(eq_im);
%subplot(3, 3, 6);
%imshow(eq_im);