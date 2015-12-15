%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/15/2015
%
% Create: Matlab R2015a
%%

function [gene_ontology] = get_gene_ontology(cluster_set, Fn, centroid_position)
    
    go = [];
    go = [go 'null'];
    count = zeros(1,1003);
    c = [];
    
    for iter = 1 : length(cluster_set)
        if strcmp(Fn{1,iter}, 'null') || strcmp(Fn{1,iter}, '') || cluster_set{iter,2} ~= centroid_position
            % do nothing
        else
            cur = strsplit(Fn{1,iter}, ';');
            for jiter = 1 : length(cur)-1
                c = [c cur(jiter)];
                [tf, index] = ismember(c, go);
                if index < 1
                    go = [go cur(jiter)];
                    [tf, index] = ismember(c, go);
                end
                count(index) = count(index) + 1;
                c = [];
            end
        end
    end
    
    %go(1) = [];
    %count(1) = [];
    
    [M, I] = max(count);
    
    gene_ontology = go(I);

end