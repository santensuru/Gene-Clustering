%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/13/2015
%
% Create: Matlab R2015a
%%

function [link] = get_link(gene)
    detail = strcat('<a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=', gene);

    detail = strcat(detail, '">http://www.genecards.org/cgi-bin/carddisp.pl?gene=');

    detail = strcat(detail, gene);

    detail = strcat(detail, '</a>');

    link = detail;
end