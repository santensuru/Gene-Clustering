%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/13/2015
%
% Create: Matlab R2015a
%%

clear;
close all;

k = 5;
show_figure_and_test_result = false;

[A, P, G] = read_dataset();

%[cluster_set, centroid] = do_kmeans(k, show_figure_and_test_result, A, P);

[cluster_set] = do_hierarchy(k, show_figure_and_test_result, A, P);

[centroid_position] = count_cluster(k, cluster_set);

n = 5;

[genes] = search_resistance_genes(cluster_set, centroid_position, A, G, n);

if ischar(genes)
    gene = genes
    link = get_link(gene)
else
    for iter = 1 : n
        gene = genes{iter}
        link = get_link(gene)
    end
end
