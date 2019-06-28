% n = 100 
% m = 100
% 
% network = zeros([m, n ,length(t)]) 
% network (:, : , t) = X 

%when getting rid of convolution for 2D 
% 
%t = total time 


a = 10;
b = 5; 
c = -1;
network = zeros(1000,1000,1000); 
surround = ones(1000,1000);
surround (1: 1000,500:1000) = 40;
time = 0:.001:1;
dt = .001;
tic 
for currT = 1: length(time) - 1 

  
    network (:, :, currT+1) = network(:, :, currT+1) + dt.* (-a.*network(:, :, currT+1) + (((b - network(:, :, currT+1)) .* conv2(surround, z, "same"))) - (((c + network(:, :, currT+1)) .* conv2(surround, z2, "same")))); 
    
    
end 
toc