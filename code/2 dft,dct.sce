clc ;
clear ;
close ;
a =imread('C:\Users\FLY\Documents\scilap\img\ai.jpg') ;//image la etho problem irukunu nanikiran
[m n]=size(a);
//,' O r i g i n a l l e n n a Image '
subplot(1,4,1)
imshow (a);
// 2D−DFT u s i n g FFT
//figure (1)
A = fft (double(a));
//,' 2D−D i s c r e t e F o u r i e r T ran sfo rm of Lena Image ' 
subplot(1,4,2)
imshow(abs(A)) ;
// f f t s h i f t e d image
//B = fftshift(A);
//figure (2)
B = fft(A);
//, ' 2D−D i s c r e t e F o u r i e r T ran sfo rm of Lena Image−f f t s h i f t e d ' 
subplot(1,4,3)
imshow (abs(B)) ;
// 2D−IDFT u s i n g FFT
//figure (3)
a_inv = fft (A)
a_inv = a_inv /( m * n ) ;
// , ' 2D−I n v e r s e D i s c r e t e F o u r i e r T ran sfo rm '
subplot(1,4,4)
imshow ( uint8 ( abs ( a_inv ) ) ) ;
