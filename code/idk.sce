clc ;
close ;
close all;
S = imread('C:\Users\FLY\Documents\scilap\img\id.jpg');//(output image a porthu change aguthu so sad)
subplot(2,4,1)
imshow(S);
//figure(1)
Sgray = rgb2gray(S);
subplot(2,4,1)
imshow(Sgray);
Sbin = im2bw(Sgray,0.5);
subplot(2,4,2)
imshow(Sbin);
//figure(2)
imhist(Sgray,[],1);
Sbin = im2bw(Sgray,0.353);
subplot(2,4,3)
imshow(Sbin);
//figure(3)
th = imgraythresh(Sgray)
Sbin = im2bw(Sgray,th);
subplot(2,4,4)
imshow(Sbin);
//figure(4)
se = imcreatese('ellipse',15,15);
Sd = imdilate(Sbin,se);
subplot(2,4,5)
imshow(Sd);
Se = imerode(Sbin,se);
scf();
subplot(2,4,6)
imshow(Se);
//figure(6)
So = imopen(Sbin,se);
se = imcreatese('ellipse',35,35);
subplot(2,4,7)
imshow(So);
//figure(7)
[S_labeled,n] = imlabel(So);
subplot(2,4,8)
imshow(S_labeled,jetcolormap(5));
//fsigure(8)
[A, BB] = imblobprop(S_labeled);
imrects(BB,[255 0 0]);
subplot(2,4,9)
imshow(S);
