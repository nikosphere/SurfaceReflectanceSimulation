bground1 = input('21 Character input for background  ', 's'); 
xonem = [-1.25 -1.25 5 -1.25 -1.25]; 

xonevalues = []
for x = 1:(length(bground1)-4)
    bgroundtime = bground1 (x: x+4);
    x1 = sum(xonem .* bgroundtime); 
    xonevalues = [xonevalues x1];
end  
plot ((1:(length(bground1)-4)), xonevalues)    
  

