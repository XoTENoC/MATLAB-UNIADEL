% driver to test the function triple
% a1821595
% 08/04/2021

% creating a list of number to test against
inputNum = [-10:1:10]
expOutput = [-30:3:30]

% using a loop to systematically test the function
for i = 1:length(inputNum)
    % inputing the number into the function and storing to outputNUm
    outputNum = triple(inputNum(i));
    % printing the Input number Expected Output and Output
    fprintf("input number: %d\nthe expected output: %d\nOutput from function: %d\n", inputNum(i), expOutput(i), outputNum);
    fprintf("\n");
end