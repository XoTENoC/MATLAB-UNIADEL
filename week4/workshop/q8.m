% assinging a vector to A
A = [ 4 5 3 7 ];

% assigning empty vectors to B and C
B = [];
C = [];

% loop to find the distance
for i = 1 : length(A)
    % loop to find the distance for each row a number at a time
    for j = 1 : length(A)
        C(j) = abs(A(i)-A(j));
    end
    % concatinating C to the next rom of B
    B = [B ; C];
end

%displaing B
disp(B)