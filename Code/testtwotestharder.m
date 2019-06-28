clear all 
clc 
close all 

a = .1;
b = 1;
L = 40
xactivity = [];
xactivity2 = []; 
xactivity3 = [] ;
xactivity4 = [];


I (1:5) = 1; 
I (6:10) = 3; 
I (11:15) = 1; 
I (16:20) = 5; 
I (21:25) = 3; 
I (26:30) = 5 
for x = 1:length(I)
    
    xi = ((b* I(x))/ (a + (L+I(x))));
xactivity = [xactivity xi];
end 

figure ('name',  'Contextual Effects: Reducing Distance between Gray Patches', 'NumberTitle', 'off')

subplot (2,2, 1) 
plot(1:length(I), xactivity) 
title '\fontsize {10} Distance between Gray Squares = 10' 

I (1:5) = 1; 
I (6:10) = 3; 
I (11:14) = 1; 
I (15:19) = 5; 
I (20:24) = 3; 
I (25:29) = 5 
for x = 1: length(I)
    
    xi = ((b* I(x))/ (a + (L+I(x))));
xactivity2 = [xactivity2 xi];
end 
 
subplot (2,2, 2) 
plot(1:length(I), xactivity2) 
title '\fontsize {10} Distance between Gray Squares = 8' 

I (1:5) = 1; 
I (6:10) = 3; 
I (11:12) = 1; 
I (13:14) = 5; 
I (15:19) = 3; 
I (20:24) = 5 
for x = 1: length(I)
    
    xi = ((b* I(x))/ (a + (L+sum(I))));
xactivity3 = [xactivity3 xi];
end 
 
subplot (2,2, 3) 
plot(1:length(I), xactivity3) 
title '\fontsize{10} Distance between Gray Squares = 4' 

I (1:5) = 1; 
I (6:10) = 3; 
I (11) = 1; 
I (12) = 5; 
I (13:17) = 3; 
I (18:22) = 5 
for x = 1: length(I)
    
    xi = ((b* I(x))/ (a + (L+sum(I))));
xactivity4 = [xactivity4 xi];
end 
 
subplot (2,2, 4) 
plot(1:length(I), xactivity4) 
title '\fontsize{10} Distance between Gray Squares = 2'


 