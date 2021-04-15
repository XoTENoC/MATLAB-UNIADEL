% detecting whether a triangle is isosceles

% empty vector for trianlge lengths
triLengths = [];

% assking for the lengths of the triangle sides
for i = 1:3
    triLengths(i) = input("length of a triangle side: ");
end

% checking if any triangle lengths are 0 or less
if triLengths(1) > 0 && triLengths(2) > 0 && triLengths(3) > 0

    % checking if any two sides of the triangle equal each other
    if triLengths(1) == triLengths (2) || triLengths(2) == triLengths (3) || triLengths(3) == triLengths (1)

        % making sure triangle is not equalateral
        if (triLengths(1) + triLengths(2)) / 2 ~= triLengths(3) || (triLengths(2) + triLengths(3)) / 2 ~= triLengths(1) || (triLengths(3) + triLengths(1)) / 2 ~= triLengths(2)

            disp('its isosceles');

        end

    end

end