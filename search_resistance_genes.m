%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/13/2015
%
% Create: Matlab R2015a
%%

function [genes] = search_resistance_genes(cluster_set, centroid_position, A, G, n)

    c_A = A;
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
    
    if n <= 1
        % 1 posible gene only
        [M,I] = min(S);
        genes = G{I, 1};
    else
        % 5 posible genes
        genes = [];
        [B,IX] = sort(S);
        for iter = 1 : 5
            genes = [genes cellstr(G{IX(iter),1})];
        end
        gene = genes;
    end
end