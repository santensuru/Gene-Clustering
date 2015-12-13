function [centroid_position] =  count_cluster(k, cluster_set)

    a = zeros(k,1);
    max = 0;
    pos = 1;
    
    for iter = 1 : length(cluster_set)
        a(cluster_set{iter,2},1) = a(cluster_set{iter,2},1) + 1;
        if a(cluster_set{iter,2},1) > max
            max = a(cluster_set{iter,2},1);
            pos = cluster_set{iter,2};
        end
    end
    
    centroid_position = pos;

end