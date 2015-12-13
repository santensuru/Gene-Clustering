function [cluster_set] = do_hierarchy(k, show_figure, A, P)

    % Distance Information
    Y = pdist(A, 'cityblock');
    %squareform(Y);
    
    % Linkages
    Z = linkage(Y, 'average');
    
    if show_figure == true
        % Verify Dissimilarity
        dis_similarity = cophenet(Z,Y)
        
        % Dendrograms
        dendrogram(Z);

        % Verify Consistency
        in_consistency = inconsistent(Z)
        
        legend = {};
        legend.satu = 'Mean of the heights of all the links included in the calculation';
        legend.dua = 'Standard deviation of all the links included in the calculation';
        legend.tiga = 'Number of links included in the calculation';
        legend.empat = 'Inconsistency coefficient';
        
        legend = legend
    
    end
    
    idx = cluster(Z,'maxclust',k);
    
    [cluster_set] = labeling(idx, P);
    
end