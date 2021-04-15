% calculate the sum of distances from each element to 
% every other element.

% define A
A=[1 3 5];

% initialisation
B=[]; % start with empty B
lenA=length(A); % record length of A

% outer loop - to add each distance sum to B
for i=[1:lenA]
    sumDist=0; % initialise sum of distances
    % inner loop - sum differences of elements
    % from current element.
    for j=[1:lenA]
        % add distance from current element A(i)
        % to other element A(j) to sum
        sumDist=sumDist + abs(A(i)-A(j));
    end

    % append sumDist to the result
    B=[B sumDist];
end

% display result
disp(B);