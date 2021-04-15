function [ words ] = FindMatches( dictionary, word);

words =[];
    for i = [1:length(dictionary)]
        if strfind(dictionary(i),word)
            words = [words dictionary(i)];
        end
    end
end
