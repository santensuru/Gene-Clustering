%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/27/2015
%
% Create: Matlab R2015a
%%

function [cluster_heatmap_data] = get_heatmap(G, centroid_position, o_Fn, cluster_set, Fn, is_to_file)

    if is_to_file == true
        chd = [];
        chd{1,1} = 'GO-Index';
        chd{1,2} = 'GO-name';
        chd = [chd G];
        chd = chd';

        for iter = 1 : length(o_Fn)
            chd{1,1+iter} = o_Fn{1,iter};
            chd{2,1+iter} = o_Fn{2,iter};
        end

        sz = size(chd);

        for jiter = 3 : sz(1)
            for iter = 1 : length(o_Fn)
                chd{jiter,1+iter} = -1;
            end
        end

        c = [];

        for iter = 1 : length(cluster_set)
            if strcmp(Fn{1,iter}, 'null') || strcmp(Fn{1,iter}, '') || cluster_set{iter,2} ~= centroid_position
                % do nothing
            else
                go = strsplit(Fn{1,iter},';');
                for jiter = 1 : length(go)-1
                    c = [c go{jiter}];
                    [tf, index] = ismember(c, o_Fn);
                    if index > 0 && index < 1003
                        chd{iter+2,index+1} = 1;
                    end

                    c = [];
                end
            end
        end
        
        cluster_heatmap_data = chd;
        filename = strcat('../Gene_ontology_function_csd-',num2str(centroid_position));
        filename = strcat(filename, '.xlsx');
        xlswrite(filename,cluster_heatmap_data);
        
    else
        chd = [];

        sz = size(G);

        for jiter = 1 : sz(2)
            for iter = 1 : length(o_Fn)
                chd{jiter,iter} = -1;
            end
        end

        c = [];

        for iter = 1 : length(cluster_set)
            if strcmp(Fn{1,iter}, 'null') || strcmp(Fn{1,iter}, '') || cluster_set{iter,2} ~= centroid_position
                % do nothing
            else
                go = strsplit(Fn{1,iter},';');
                for jiter = 1 : length(go)-1
                    c = [c go{jiter}];
                    [tf, index] = ismember(c, o_Fn);
                    if index > 0 && index < 1003
                        chd{iter,index} = 1;
                    end
                    c = [];
                end
            end
        end
        
        cluster_heatmap_data = chd;
    
    end
    
end