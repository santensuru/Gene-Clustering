%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/16/2015
%
% Create: Matlab R2015a
%%

function save_go(Fn)

    go = [];
    go = [go 'null'];
    c = [];
    
    for iter = 1 : length(Fn)
        if strcmp(Fn{1,iter}, 'null') || strcmp(Fn{1,iter}, '')
            % do nothing
        else
            cur = strsplit(Fn{1,iter}, ';');
            for jiter = 1 : length(cur)-1
                c = [c cur(jiter)];
                [tf, index] = ismember(c, go);
                if index < 1
                    go = [go cur(jiter)];
                end
                c = [];
            end
        end
    end
    
    go(1) = [];
    
    gene_ontology = go';

    xlswrite('../Gene_ontology.xlsx',gene_ontology);

end