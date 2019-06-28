
hold on
xmidvalues = []
for x = 1:(length(bground1)-6)
    bgroundtimemid = bground1 (x+2: x+6);
    xmid = sum(xone .* bgroundtimemid); 
    xmidvalues = [xmidvalues xmid];
end  
plot ((1:(length(bground1)-6)), xmidvalues) 

xleftvalues = []
for x = 1:(length(bground1)-6)
    bgroundrfl = bground1 (x : x+4);
    xleft = sum(xone .* bgroundrfl); 
    xleftvalues = [xleftvalues xleft];
end  
plot ((1:(length(bground1)-6)), xleftvalues) 

xlmidvalues = []
for x = 1:(length(bground1)-6)
    bgroundtimelmid = bground1 (x+1: x+5);
    xlmid = sum(xone .* bgroundtimelmid); 
    xlmidvalues = [xlmidvalues xlmid];
end  
plot ((1:(length(bground1)-6)), xlmidvalues) 

xmidrvalues = []
for x = 1:(length(bground1)-6)
    bgroundtimermid = bground1 (x+3: x+7);
    xrmid = sum(xone .* bgroundtimermid); 
    xmidrvalues = [xmidrvalues xrmid];
end  
plot ((1:(length(bground1)-6)), xmidrvalues) 


hold off
