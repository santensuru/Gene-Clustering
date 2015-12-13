function [A, P, G] = read_dataset()

    % define file and configuration
    filename = 'Gene_dataset.xlsx';
    sheet = 1;
    xlRange = 'B3:CV1216';

    % read the file
    [A, C] = xlsread(filename, sheet, xlRange);
    
    % tranpose for clustering
    %A = A';
    
    P = C(1,:);
    P = P(2:end);
    P = P';
    
    G = C(:,1);
    G = G(2:end);

end