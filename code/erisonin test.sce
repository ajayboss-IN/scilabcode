clc ;// to c l e a r command window .
clear all ;// to k i l l p r e v i o u s l y d e f i n e d v a r i a b l e s .
xdel ( winsid () ); // to c l o s e a l l c u r r e n t l y open f i g u r e ( s) .
// T hi s co d e u s e s camaraman . t i f f i l e f o r p r o c e s s i n g
// SCI + ’/ c o n t r i b / SIVP 0 . 5 . 3 . 2 / imag e s / l e n a . png ’
img = imread ('C:\Users\FLY\Documents\scilap\img\id.jpg') ; // Reads t h e t e x t image ( Image f rom R e f e r e n c e s )
// t i t l e (” O r i g i n a l Image ” ) ;
imshow ( img ) ; // Show o r i g i n a limage .
//if( size ( img ,3) >1) then
Gray_img = rgb2gray( img ) ; // Co n v e r t s c o l o r image to g r a y s c a l e
//else
//Gray_img = img ; // i f image i s 2Dimage
//end
imshow ( Gray_img ) 
se = imcreatese('ellipse',15,15); // c r e a t es t r u c t u r i n g el em e n t 3 x3 s q u a r e ma t ri x
Eimg = imerode(Gray_img,se); // e r o s i o n of t h eimage
pause ; // t y p e ’ resume ’command on command prompt
imshow ( Eimg ) ; // show R e s u l t a n timage
// s e =[1 1 1 ; 1 1 1 ; 1 1 1 ] ;
Dimg =imdilate(Gray_img,se) ; // d i l a t i o n of t h eimage
pause ; // t y p e ’ resume ’command on command prompt
imshow ( Dimg ) ; // Show R e s u l t a n tImage
Oimg =imopen ( Gray_img , se ) ; // o p e ni n g o p e r a t i o non t h e image
pause ; // t y p e ’ resume ’command on command prompt
imshow ( Oimg ) ; // Show R e s u l t a n tImage
Cimg = imclose ( Gray_img , se ); // c l o s i n g o p e r a t i o non t h e image
pause ; // t y p e ’ resume ’command on command prompt
imshow ( Cimg ) ; 
