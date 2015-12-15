%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/15/2015
%
% Create: Matlab R2015a
%%

function [cluster_set] = labeling(idx, G)

    % create vector of g,idx
    cluster_set = [];
    for iter = 1 : length(G)
        cur_cluster_set = {
            G(iter)
            idx(iter)
        };
        cluster_set = [cluster_set, cur_cluster_set];
    end

    % tranpose
    cluster_set = cluster_set';

end