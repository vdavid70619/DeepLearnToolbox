%%
%% Xiyang Modification 
%% 5.7.2014: also return regressions
%%
function [labels, regressions] = nnpredict(nn, x)
    nn.testing = 1;
    nn = nnff(nn, x, zeros(size(x,1), nn.size(end)));
    nn.testing = 0;
    
    [dummy, i] = max(nn.a{end},[],2);
	regressions = nn.a{end};
    labels = i;
end
