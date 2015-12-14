%%
% Author: Djuned Fernando Djusdek
%         5112 100 071
%         Informatics - ITS
%         12/13/2015
%
% Create: Matlab R2015a
%%

function [cluster_set] = labeling(idx, P)

    % create vector of p,idx
    cluster_set = [];
    for iter = 1 : length(P)
        cur_cluster_set = {
            P(iter)
            idx(iter)
        };
        cluster_set = [cluster_set, cur_cluster_set];
    end

    % tranpose
    cluster_set = cluster_set';

end