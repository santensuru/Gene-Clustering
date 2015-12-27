%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/20/2015
%
% Create: Matlab R2015a
%%

function [go_Fn] = get_ontology_detail_cluster(G, Fn, o_Fn, cluster_set, centroid_position)

    go_Fn = [];
    c = [];
    liter = 1;

    for iter = 1 : length(G)
        if strcmp(Fn{1,iter}, 'null') || strcmp(Fn{1,iter}, '') || cluster_set{iter,2} ~= centroid_position
            % do nothing
        else
            
            go_Fn{1,liter} = G{1,iter};
            go = strsplit(Fn{1,iter},';');
            kiter = 2;
            for jiter = 1 : length(go)-1
                c = [c go{jiter}];
                [tf, index] = ismember(c, o_Fn);
                if index > 0 && index < 1003
                    go_Fn{kiter,liter} = o_Fn{2,index};
                    kiter = kiter + 1;
                end
                c = [];
            end
           liter = liter + 1;
           
        end
    end

end