function [B] = makeLayered(n)
    B = [1];
    for i = 2:n
        B = surroundWith(B, i);
    end
end