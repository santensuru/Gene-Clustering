%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/14/2015
%
% Create: Matlab R2015a
%%

clear;
close all;

k = 5;
show_figure_and_test_result = false;

[A, P, G] = read_dataset();

[cluster_set] = do_hierarchy(k, show_figure_and_test_result, A, G);
