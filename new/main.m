%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/15/2015
%
% Create: Matlab R2015a
%%

clear;
close all;

k = 5;
show_figure_and_test_result = false;

[A, P, G] = read_dataset();

[cluster_set] = do_hierarchy(k, show_figure_and_test_result, A, G);

[Fn] = read_genes();

[gene_ontology] = get_gene_ontology(cluster_set, Fn);

gene_ontology = gene_ontology{1}

link = get_link(gene_ontology)
