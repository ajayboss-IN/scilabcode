clear all;
close;
clc;
 //h=[1,2,3,3,2,1]; 
 //x=[1,2,3,4,5];
h=[[1,2,3],[4,5,6],[7,8,9]];x=[[1,2,3],[4,5,6],[7,8,9]];
 //x=input('Enter the i/p seq');
 //h=input('Enter the i/p seq');
y=convol(x,h);
for  i=1;length(y) 
     if (y(i)<=0.0001) 
         y(i)=0;
     end 
end 
disp(y,'linear convolution of y') 
subplot(3,1,2) 
a=gca();
a.thickness=2; 
plot2d3('gnn',[0:length(h)-1],h) 
xtitle('impulse response','n','h[n]');
subplot(3,1,1);
a=gca();
a.thickness=2;
plot2d3('gnn',[0:length(x)-1],x) 
xtitle('impulse response','n','x[n]');
subplot(3,1,3);
a=gca();
a.thickness=2;
plot2d3('gnn',[0:length(y)-1],y) 
xtitle('impulse response','n','y[n]')
