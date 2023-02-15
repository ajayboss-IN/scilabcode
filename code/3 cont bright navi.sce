clc ;
close ;
a = imread ('C:\Users\FLY\Documents\scilap\img\boss.jpg') ;
//a = rgb2gray ( a ) ;
b = double ( a ) *0.5;
b = uint8 ( b )
c = double ( b ) *2;
c = uint8 ( c )
//figure (1)
subplot(2,4,1)
imshow(a) ;
title ( ' O r i g i n a l Image ' )
//figure (2)
subplot(2,4,2)
imshow(b) ;
title ( ' D e c r e a s e i n C o n t r a s t ')
//figure (3)
subplot(2,4,3)
imshow(c) ;
title ( ' I n c r e a s e i n C o n t r a s t ' )
d = double ( a ) +50;
d = uint8 ( d ) ;
//figure (4)
/*subplot(2,4,4)
imshow(a) ;
title ( ' O r i g i n a l Image ' )*/
//figure (5)
subplot(2,4,4)
imshow(d) ;
title ( ' Enhanced Image ' )
a = imread ('C:\Users\FLY\Documents\scilap\img\boss.jpg') ;
k = 255 - double ( a ) ;
k = uint8 ( k ) ;
/*subplot(2,4,6)
imshow ( a) ;
title ( ' O r i g i n a l onca Image ' )*/
subplot(2,4,5)
imshow ( k) ;
title ( ' N e g a ti v e of O r i g i n a l Image ' )
