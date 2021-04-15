% finding the min and max of 2 vectors
% a1821595
% 08/04/2021

function [minNum, maxNum] = minMaxVectors(v1, v2)
    % assigning both min and max to starting vectors
    minNum = v1(1);
    maxNum = v1(1);

    % looping the check through the vectors
    for i = 1:length(v1)
        % if v1(i) is lest than the minimum values assign it to minNum if not continue
        if v1(i) < minNum
            minNum = v1(i);
        end

        % if v2(i) is lest than the minimum values assign it to minNum if not continue
        if v2(i) < minNum
            minNum = v2(i);
        end
        
        % if v1(i) id greater than the number in maxNUm assign it to maxNum if not continue
        if v1(i) > maxNum
            maxNum = v1(i);
        end

        % if v2(i) id greater than the number in maxNUm assign it to maxNum if not continue
        if v2(i) > maxNum;
            maxNum = v2(i);
        end
    end

end