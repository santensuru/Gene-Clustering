%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/13/2015
%%

clear;
close all;

k = 5;
show_figure_and_test_result = false;

[A, P, G] = read_dataset();

%[cluster_set, centroid] = do_kmeans(k, show_figure_and_test_result, A, P);

[cluster_set] = do_hierarchy(k, show_figure_and_test_result, A, P);

[centroid_position] = count_cluster(k, cluster_set);

[gene] = search_resistance_gene(cluster_set, centroid_position, A, G);

gene = gene

detail = strcat('<a href="http://www.genecards.org/cgi-bin/carddisp.pl?gene=', gene);

detail = strcat(detail, '">http://www.genecards.org/cgi-bin/carddisp.pl?gene=');

detail = strcat(detail, gene);

detail = strcat(detail, '</a>');

link = detail
