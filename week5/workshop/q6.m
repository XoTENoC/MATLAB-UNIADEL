% chekcing if a triangle is scalene

% empty vector for trianlge lengths
triLengths = [];

% assking for the lengths of the triangle sides
for i = 1:3
    triLengths(i) = input("length of a triangle side: ");
end

% checking if any triangle lengths are 0 or less
if triLengths(1) > 0 && triLengths(2) > 0 && triLengths(3) > 0

    %making sure it is a triagnle
    if triLengths(1) + triLengths(2) > triLengths(3) || triLengths(1) + triLengths(3) > triLengths(2) || triLengths(3) + triLengths(2) > triLengths(1)

        % making all sure all lengths don't equal each other
        if triLengths(1) ~= triLengths(2) && triLengths(2) ~= triLengths(3) && triLengths(3) ~= triLengths(1)

            % displaying that the triangle is scalene
            disp('triangle is scalene');

        end

end