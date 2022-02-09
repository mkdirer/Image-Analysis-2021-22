clear;clc;
im = double(imread('ptaki.jpg'))/255;
gim = rgb2gray(im);
r = im(:, :, 1);
b = im(:, :, 3);
b = ~imbinarize(b, .6);
r(r < .15) = 1;
r = imbinarize(r, .3);
bim = b | r;
bim = imclose(bim, ones(5));
bim = imopen(bim, ones(5));
l = bwlabel(bim);
n = max(l(:));
for i = (1 : n)
    prop = regionprops(l == i, 'all');

    d = AO5RMalinowska(prop.Image);
    dD = AO5RDanielsson(prop.Image);
    dBB = AO5RBlairBliss(prop.Image);
    dH = AO5RHaralick(prop.Image);
    dF = AO5RFeret(prop.Image);
    
    wspl(i, :) = [d, dD, dBB, dH, dF];
end
avg_malin = mean(wspl);
std_malin = std(wspl);
err = abs(wspl - avg_malin) ./ std_malin;
err_margin = 2; 
is_typical_wspl = err < err_margin; 
is_typical = sum(is_typical_wspl, 2) > 3; 
prop = regionprops(l == 8, 'all'); 
imshow(prop.Image);
