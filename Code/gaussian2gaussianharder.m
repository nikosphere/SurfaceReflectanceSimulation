
clear all

x = [-3:.1:3] ; 
hold on
y = gaussmf (x, [1 0]);  

secondy = gaussmf(x, [2 0]);

plot(x, y) 
plot(x, secondy) 
hold off
