% function to sum vector
% a1821595
% 08/04/2021

% defining the function
function [sumOutput] = sumVectors(v1, v2)
    % decalaring the final sum variable
    sumOutput = 0;
    % looping adding the vectors
    for i = 1: length(v1)
        % concatinating adding vectors
        sumOutput = sumOutput + v1(i) + v2(i);
    end
end