// Ca p tio n : S c i l a b co d e f o r Edge D e t e c t i o n u s i n g
//D i f f e r e n t Edge d e t e c t o r s
/*
n=edge()
subplot(2,4,1)
imshow()
title()
*/
close;
clc ;
a = imread('C:\Users\FLY\Documents\scilap\img\morethen.jpg');
a = rgb2gray(a);
c = edge(a ,'sobel');
d = edge(a ,'prewitt') ;
e = edge(a ,'log');
f = edge(a ,'canny');
subplot(2,4,1)
imshow(a);
title('OriginalImage');
//figure
subplot(2,4,2)
imshow(c)
title('Sobel')
//figure
subplot(2,4,3)
imshow(d)
title('Prewitt')
//figure
subplot(2,4,4)
imshow(e)
title('Log')
//figure
subplot(2,4,5)
imshow(f)
title('Canny')

