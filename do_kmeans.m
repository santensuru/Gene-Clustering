function [cluster_set, centroid] = do_kmeans(k, show_figure, A, P)

    % clustering using k-means (k = 5)
    [idx, centroid, sumd] = kmeans(A, k);

    if show_figure == true
        % view plot in graph
        sz = size(A);
        for iter = 1 : sz(1)-1
            figure;
            scatter(A(iter,:), A(iter+1,:));
            title 'Gene''s Data';
            xlabel(P(iter));
            ylabel(P(iter+1));
        end
        figure;
        scatter(A(iter,:), A(1,:));
        title 'Gene''s Data';
        xlabel(P(iter+1));
        ylabel(P(1));
        
        sse = sumd
    end

    [cluster_set] = labeling(idx, P);

end