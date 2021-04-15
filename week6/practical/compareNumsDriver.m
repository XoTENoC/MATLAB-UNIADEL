% Driver for compareNums.m
% a1821595
% 08/04/2021

% assigning values to test
inputNum = [2, 3; 8, 5; 1, -5; 7, 2; 19, 56; 71, 5];
expOutput = [2, 3; 5, 8; -5, 1; 2, 7; 19, 56; 5, 71];

% looping to test for all test values
for i = 1:size(inputNum, 1)
    % inputing numbers into function
    [small big] = compareNums(inputNum(i, 1), inputNum(i, 2));
    % outputing input numbers
    fprintf("input numbers %d, %d\n", inputNum(i, 1), inputNum(i, 2));
    % outputing expected output
    fprintf("expected output numbers %d, %d\n", expOutput(i, 1), expOutput(i, 2));
    % outputing results from function
    fprintf("output numbers %d, %d\n", small, big);
end
