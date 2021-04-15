function [diagonal] = getDiagonal(A)

    diagonal = [];
    rows = size(A, 1);
    cols = size(A, 2);
    for i = 1:rows
        for j = 1:cols
            if i == j
                diagonal = [diagonal A(i, j)];
            end
        end
    end

end