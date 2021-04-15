% printing a vector until equal to or less than 0 occurs

% predifined vector
A = [2, 3, 5, 2, 0, -1, 5, 6, 9];

% position in the vector
j = 1;

% counter for printing vector values
i = 0;

% deciding weather the point in vector is winthing the array and greater that 0 if not end
while j >= length(A) || A(j) > 0
    % add one to counters
    j = j + 1;
    i = i + 1;

    % display point in the vector
    fprintf('%d  ', A(i));
end

% print a new line.
fprintf('\n')