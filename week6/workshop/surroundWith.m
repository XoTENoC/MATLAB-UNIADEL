function [B] = surroundWith(A,number)
    B = [];
    rows = size(A, 1) + 2;
    cols = size(A, 2) + 2;

    for i = 1:rows
        for j = 1:cols
            if i == 1 || j == 1 || i == rows || j == cols
                B(i, j) = number;
            else
                B(i, j) = A(i-1, j-1);
            end
        end
    end
end