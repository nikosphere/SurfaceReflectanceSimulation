clc 
clear all 




xmidvalues = [];
xleftvalues = []; 
xlmidvalues = []; 
totalnn = [];
xrmidvalues = [];
xrvalues = [];

xleftvalues2 = [];
xlmidvalues2 = [];
xmidvalues2 = [];
xrmidvalues2 = [];
xrvalues2 = [];
% hold on


xone = [-1.25 -1.25 5 -1.25 -1.25];

bground1 (1:20) = 1;
bground1 (20:40) = 4; 
bground1 (40:60) = 1;



for x = 1:(length(bground1)-13);
    
    bgroundtimemid = bground1 (x+2: x+6);
    xmid = sum(xone .* bgroundtimemid); 
    xmidvalues = [xmidvalues xmid];  
    
    bgroundrfl = bground1 (x : x+4);
    xleft = sum(xone .* bgroundrfl); 
    xleftvalues = [xleftvalues xleft]; 
    
    bgroundtimelmid = bground1 (x+1: x+5);
    xlmid = sum(xone .* bgroundtimelmid); 
    xlmidvalues = [xlmidvalues xlmid];  
    
    bgtrm = bground1 (x+3 : x+7); 
    xrmid = sum(xone .* bgtrm); 
    xrmidvalues = [xrmidvalues xrmid]; 
    
    
    bgtr = bground1 (x+4 : x+8); 
    xr = sum(xone .* bgtr); 
    xrvalues = [xrvalues xr]; 
    
    %start of new five neurons%
    bgroundrf2 = bground1 (x+5 : x+9); 
    xleft2 = sum(xone .* bgroundrf2); 
    xleftvalues2 = [xleftvalues2 xleft2]; 
    
    bgroundtimelmid2 = bground1 (x+6: x+10);
    xlmid2 = sum(xone .* bgroundtimelmid2); 
    xlmidvalues2 = [xlmidvalues2 xlmid2];  
    
    bgroundtimemid2 = bground1 (x+7: x+11);
    xmid2 = sum(xone .* bgroundtimemid2); 
    xmidvalues2 = [xmidvalues2 xmid2];  
    
    bgtrm2 = bground1 (x+8 : x+12); 
    xrmid2 = sum(xone .* bgtrm2); 
    xrmidvalues2 = [xrmidvalues2 xrmid2]; 
    
    bgtr2 = bground1 (x+9 : x+13); 
    xr2 = sum(xone .* bgtr2); 
    xrvalues2 = [xrvalues2 xr2]; 
    
   
    
    
    
    
    totaln = xmid + xleft + xlmid + xrmid + xr + xleft2 +xlmid2 +xmid2 + xrmid2 + xr2;
    totalnn = [totalnn totaln];
end 

  
    
%plot ((1:(length(bground1)-13)), xmidvalues)
 %plot ((1:(length(bground1)-13)), xleftvalues) 
 %plot ((1:(length(bground1)-13)), xlmidvalues) 
 %hold off

figure(2) 
plot ((1:(length(bground1)-13)), totalnn)