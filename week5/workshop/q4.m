% deciding whether a triangle is equalteral

% empty vector for trianlge lengths
triLengths = [];

% empty variable for lengths added together
totalLengths = 0;

% assking for the lengths of the triangle sides
for i = 1:3
    triLengths(i) = input("length of a triangle side: ");
end

% adding all the lengths of the triangle together
for i = 1:3
    totalLengths = totalLengths + triLengths(i);
end

% checking if the triangle is equalateral if so print triangle is equalteral
if triLengths(1) > 0 && triLengths(2) > 0 && triLengths(3) > 0
    if triLengths(1) == triLengths(2) && triLengths(2) == triLengths(3)
        disp('triangle is equalteral');
    end
end