%% abs calculator
% file: numbers.m
%
% by Nathaniel Chang
% Created: 09/03/2021
% last edited: 09/03/2021
% programing (MATLAB and C) Semester 1

% --------------------  initialize values   -------------------
num = [];
finalNum = 0;

% ------------------  asking for user input   -----------------
for i = 1:5
    num(i) = input('please enter a number: ');
end

% ------------------  calculating abs value   -----------------
for i = 1:5
    finalNum = finalNum + abs(num(i));
end

% -----------------  displaying final value   -----------------
disp(['the abs sum is: ', num2str(finalNum)]);