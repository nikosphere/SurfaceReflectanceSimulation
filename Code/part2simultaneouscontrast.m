clear all 
clc 
close all 

a = .1;
b = 1;

xactivity = [];
xactivity2 = []; 
xactivity3 = []; 
xactivity4 = [];



I (1:50) = 1; 
I (51:100) = 3; 
I (101:150) = 1; 
I (151:200) = 5; 
I (201:250) = 3; 
I (251:300) = 5; 
for x = 1: (length(I)-9)
    entireinput = [I(x : x+9)]
    xi = ((b* I(x+4)))/ (a + (sum(entireinput)));
sum(entireinput)
    xactivity = [xactivity xi];
end 

subplot (2, 1, 2)
plot(1:length(xactivity), xactivity) 
title ('Simultaneous Contrast Model') 

xlabel ('Position') 
ylabel ('Neuron X Output') 

subplot (2, 1, 1) 

plot(1:length(I),I) 
title ('Luminance Profile of the Modeled Environment') 
xlabel('Position') 
ylabel ('Luminance') 


