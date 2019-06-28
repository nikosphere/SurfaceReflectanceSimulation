background (1 : 500) = 1; 
 
background (501 :1000) = 100; 

excite = conv ( background, DoG, "same"); 

xlets = 1:length(excite); 

plot(xlets,excite) 

