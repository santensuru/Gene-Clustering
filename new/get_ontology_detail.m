%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/20/2015
%
% Create: Matlab R2015a
%%

function [go_Fn] = get_ontology_detail(G, Fn, o_Fn)

    go_Fn = G;
    c = [];

    for iter = 1 : length(G)
        if strcmp(Fn{1,iter}, 'null') || strcmp(Fn{1,iter}, '')
            % do nothing
        else
            go = strsplit(Fn{1,iter},';');
            kiter = 2;
            for jiter = 1 : length(go)-1
                c = [c go{jiter}];
                [tf, index] = ismember(c, o_Fn);
                if index > 0 && index < 1003
                    go_Fn{kiter,iter} = o_Fn{2,index};
                    kiter = kiter + 1;
                end
                c = [];
            end
           
        end
    end

end