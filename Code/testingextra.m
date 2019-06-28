time = 0: .01:0.99;
network = zeros(100,100,100); 
surround = ones(100,100);
surround (1: 100,50:100) = 40; 
dt = .01; 
b= 1; 
c = -1;
a = .1;


%issues arise when you attempt to add a 3x3 matrix with a 3x3 matrix 
% it gives you that strange error
% the issue arises from the lack of a 3rd dimension, without an addition
% of a "page" section, or a z axis, you cannot faithfully add 
%two x,y matrices and store them, time can function as a sheet and the
%data combines many of these sheets to create a slab 
%the slab records said changes 
for currT = 1: length(time) - 1 

  
    network (:, :, currT+1) = network(:, :, currT+1) + dt .* ( (-a .* network(:, :, currT+1)) + ((b-network (:, :, currT+1)) .* conv2(surround, z, "same")) - (((c - network(:, :, currT+1))) .* conv2(surround,z2, "same"))) ;
   
end 

%3 by 3 matrix that, over 500 milliseconds, gets larger
%the strange segmented graph that is produced actually makes sense 
[X,Y,Z] = ndgrid(1:size(network,1), 1:size(network,2), 1:size(network,3));
pointsize = 30;
scatter3(X(:), Y(:), Z(:), pointsize, network(:)); 
% 
mesh(network) 


