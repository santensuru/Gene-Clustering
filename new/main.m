%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/20/2015
%
% Create: Matlab R2015a
%%

clear;
close all;

k = 5;
show_figure_and_test_result = true;
is_to_file = false;

[A, P, G] = read_dataset();

% HeatMap of raw data
if show_figure_and_test_result == true
    HeatMap(A);
end

[cluster_set] = do_hierarchy(k, show_figure_and_test_result, A, G);

[Fn] = read_genes();

% save to file (gene_ontology(s))
%save_go(Fn);

% Used for created dictionary <gene's name, [function / ontology]>
[o_Fn] = read_ontology();
%[go_Fn] = get_ontology_detail(G, Fn, o_Fn);
% save to file (gene_ontology(s)'s function)
%save_go_Fn(go_Fn);

% most only
%[centroid_position] = count_cluster(k, cluster_set);
%[gene_ontology] = get_gene_ontology(cluster_set, Fn, centroid_position);

%[chd] = get_heatmap(G, centroid_position, o_Fn, cluster_set, Fn, is_to_file);

%gene_ontology = gene_ontology{1}

%link = get_link(gene_ontology)

% all cluster
for iter = 1 : k
    cluster = iter;
    
    [gene_ontology] = get_gene_ontology(cluster_set, Fn, iter);
    
    [chd] = get_heatmap(G, iter, o_Fn, cluster_set, Fn, is_to_file);
    
    if show_figure_and_test_result == true && is_to_file == false
        L = HeatMap(cell2mat(chd));
        addTitle(L, strcat('cluster-',num2str(iter)));
    end
    
    % Used for created dictionary <gene's name, [function / ontology]>
    [go_Fn] = get_ontology_detail_cluster(G, Fn, o_Fn, cluster_set, iter);
    % save to file (gene_ontology(s)'s function)
    filename = strcat('../Gene_ontology_function_cs-',num2str(iter));
    filename = strcat(filename, '.xlsx');
    filename=filename
    xlswrite(filename,go_Fn);

    gene_ontology = gene_ontology{1};
    
    link = get_link(gene_ontology);
    
    detail = {cluster gene_ontology}
    
    disp(link);
end