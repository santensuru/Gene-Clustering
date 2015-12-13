%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/13/2015
%
% Create: Matlab R2015a
%%

function [gene] = search_resistance_gene(cluster_set, centroid_position, A, G)

    c_A = A';
    c_cluster_set = cluster_set;
    
    len = length(cluster_set);
    
    for iter = 1 : len
       if c_cluster_set{iter,2} ~= centroid_position
           c_A(iter,:) = [];
           c_cluster_set(iter,:) = [];
           iter = iter - 1;
           len = len - 1;
       end
       if iter >= len
           break
       end
    end
    
    S = std(c_A);
    
    [M,I] = min(S);
    
    gene = G{I, 1};

end