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
    entireinput = [I(x : x+9)];
    xi = ((b* I(x+4)))/ (a + (sum(entireinput)));
    xactivity = [xactivity xi];
end 

subplot (2, 2, 1)
plot(1:length(xactivity), xactivity) 
title ('Simultaneous Contrast Model Unchanged Distance') 
xlabel ('Position') 
ylabel ('Neuron X Output')
I (1:50) = 1; 
I (51:100) = 3; 
I (101:130) = 1; 
I (131:160) = 5; 
I (161:210) = 3; 
I (211:260) = 5; 
for x = 1: (length(I)-9)
    entireinput = [I(x : x+9)];
    xi = ((b* I(x+4)))/ (a + (sum(entireinput)));
    xactivity2 = [xactivity2 xi];
end 

subplot (2, 2, 2)
plot(1:length(xactivity2), xactivity2) 
title ('Simultaneous Contrast Model Reduced Distance') 
xlabel ('Position')
ylabel ('Neuron X Output')

I (1:50) = 1; 
I (51:100) = 3; 
I (101:120) = 1; 
I (121:140) = 5; 
I (141:190) = 3; 
I (191:240) = 5; 
for x = 1: (length(I)-9)
    entireinput = [I(x : x+9)];
    xi = ((b* I(x+4)))/ (a + (sum(entireinput)));
    xactivity3 = [xactivity3 xi];
end 

subplot (2, 2, 3)
plot(1:length(xactivity3), xactivity3) 
title ('Simultaneous Contrast Model Further Reduced Distance') 
xlabel ('Position') 
ylabel ('Neuron X Output') 

I (1:50) = 1; 
I (51:100) = 3; 
I (101:110) = 1; 
I (111:120) = 5; 
I (121:170) = 3; 
I (171:220) = 5; 
for x = 1: (length(I)-9)
    entireinput = [I(x : x+9)];
    xi = ((b* I(x+4)))/ (a + (sum(entireinput)));
    xactivity4 = [xactivity4 xi];
end 

subplot (2, 2, 4)
plot(1:length(xactivity4), xactivity4) 
title ('Simultaneous Contrast Model Further Reduced Distance') 
xlabel ('Position')
ylabel ('Neuron X Output') 



