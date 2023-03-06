clc ;
clear all ;
img = imread ('C:\Users\FLY\Documents\scilap\img\morethen.jpg') ; 
subplot(2,4,1)
imshow(img);
Gray_img = rgb2gray( img ) ;
subplot(2,4,2)
imshow ( Gray_img ) 
se = imcreatese('ellipse',15,15); 
Eimg = imerode(Gray_img,se); // e r o s i o n of t h eimage
subplot(2,4,3)
imshow ( Eimg ) ;
Dimg =imdilate(Gray_img,se) ; // d i l a t i o n of t h eimage
subplot(2,4,4)
imshow ( Dimg ) ;
Oimg =imopen ( Gray_img , se ) ; // o p e ni n g o p e r a t i o non t h e image
subplot(2,4,5)
imshow ( Oimg ) ;
Cimg = imclose ( Gray_img , se ); // c l o s i n g o p e r a t i o non t h e image
subplot(2,4,6)
imshow ( Cimg ) ; 
