// Ca p tio n : S c i l a b co d e t h a t p e rf o rm s t h r e s h o l do p e r a t i o n
clc ;
close ;
a = imread ('C:\Users\FLY\Documents\scilap\img\boss.jpg' ) 
a = rgb2gray ( a ) ;
[ m n ] = size ( a) ;
t = input ( ' E n t e r t h e t h r e s h o l d pa ram e t e r ' ) ;
for i = 1: m
for j = 1: n
if( a(i , j ) <t )
b (i , j ) =0;
else
b (i , j ) =255;
end
end
end
//figure (1)
subplot(2,2,1)
imshow(a) ;
title ( ' O r i g i n a l Image ' )
//figure (2)
subplot(2,2,2)
imshow(b) ;
title ( ' T h r e s h ol d e d Image ' )
xlabel ( sprintf ( ' T h r e s h ol d v a l u e i s %g ' ,t ) )
// R e s u l t
// E n t e r t h e t h r e s h o l d pa ram e t e r 140	
