%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/15/2015
%
% Create: Matlab R2015a
%%

function [Fn] = read_genes()
    % define file and configuration
    filename = '../Gene_function2.xlsx';
    sheet = 1;
    xlRange = 'A1:B1213';

    % read the file
    [A, C] = xlsread(filename, sheet, xlRange);
    
    Fn = C(:,2);
    Fn = Fn';
    
end