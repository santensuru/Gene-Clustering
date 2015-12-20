%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/20/2015
%
% Create: Matlab R2015a
%%

function [o_Fn] = read_ontology()

    % define file and configuration
    filename = '../Gene_ontology2.xlsx';
    sheet = 1;
    xlRange = 'A1:B1213';

    % read the file
    [A, C] = xlsread(filename, sheet, xlRange);
    
    o_Fn = C;
    o_Fn = o_Fn';
    
end