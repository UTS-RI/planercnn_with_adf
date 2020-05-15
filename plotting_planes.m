
for i=0:42 %looping through the images
    
    
    image_string = strcat("image_" + int2str(i));
    mask_string = strcat(image_string + "_mask_*.csv");
    fstruct = dir(mask_string);
    
    num_items =size(fstruct,1);
    
    for j=0:(num_items-1)
       
        mask_file = strcat(image_string + "_mask_" + int2str(j) + ".csv");
        param_file = strcat(image_string + "_param_" + int2str(j) + ".csv");
        var_file = strcat(image_string + "_var_" + int2str(j) + ".csv");
        
        
        mask = csvread(mask_file);
        stats = regionprops(mask);
        centroid = stats.Centroid;
        
        param_file = csvread(param_file);
        var = csvread(var_file);
        
        
    end
    
    
end