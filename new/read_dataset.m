%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/14/2015
%
% Create: Matlab R2015a
%%

function [A, P, G] = read_dataset()

    % define file and configuration
    filename = '../Gene_dataset.xlsx';
    sheet = 1;
    xlRange = 'B3:CV1216';

    % read the file
    [A, C] = xlsread(filename, sheet, xlRange);
    
    P = C(1,:);
    P = P(2:end);
    
    G = C(:,1);
    G = G(2:end);
    G = G';
    
end