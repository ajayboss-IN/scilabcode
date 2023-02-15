// Ca p tio n : Read an RGB image and e x t r a c t t h e t h r e ec o l o u r componen t s : red , g r e e n
// and bl u e
clc ;
close;
RGB =imread('C:\Users\FLY\Documents\scilap\img\morethen.jpg') ; //image may be change pannanum
R = RGB;
G = RGB;
B = RGB;
R (: ,: ,2) =0;
R (: ,: ,3) =0;
G (: ,: ,1) =0;
G (: ,: ,3) =0;
B (: ,: ,1) =0;
B (: ,: ,2) =0;
//figure (1)
subplot(2,2,1)
imshow( RGB) ; //IPDt o o l b o x
title ( 'O r i g i n a l C ol o r Image ') ;
//figure (2)
subplot(2,2,2)
imshow(R) ;
//figure (3)
subplot(2,2,3)
imshow(G) ;
//figure (4)
subplot(2,2,4)
imshow(B) ;
