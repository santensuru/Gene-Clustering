%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/13/2015
%
% Create: Matlab R2015a
%%

function [link] = get_link(gene_ontology)
    detail = strcat('<a href="http://amigo.geneontology.org/amigo/term/', gene_ontology);

    detail = strcat(detail, '">http://amigo.geneontology.org/amigo/term/');

    detail = strcat(detail, gene_ontology);

    detail = strcat(detail, '</a>');

    link = detail;
end