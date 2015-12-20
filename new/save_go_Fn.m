%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/20/2015
%
% Create: Matlab R2015a
%%

function save_go_Fn(go_Fn)

    gene_ontology_function = go_Fn';
    
    xlswrite('../Gene_ontology_function.xlsx',gene_ontology_function);

end