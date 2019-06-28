time = 0:.001:1;
dt = .001;
xi = 0;
a = .1 
b = 2 
c = -1


surround (1:500) = 1;
surround (501:1000) = 20;
xactivity = [];

for currT = 1: length(time) - 1  
    xi = xi + (dt .* (-a * xi) + (((b - xi) .* ((conv(surround, valuesexcitatoryG,"same")))) - ((c + xi) .* (conv(surround, valuesinhibitoryG,"same"))))); 
xactivity = [xactivity xi];

end 


