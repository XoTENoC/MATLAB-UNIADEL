%% times everything by -1
% file: q4a.m
%
% by Nathaniel Chang
% Created: 16/03/2021
% last edited: 16/03/2021
% programing (MATLAB and C) Semester 1

% intializing values
n = 0;
vector_input = [];
output = [];

% asking for user input
n = input("how many numbers do you want in the vector (type '0' for default values): ");

% assigning default values are asking user for values
if n ~=0
    for i = 1:n
        vector_input(i) = input("please enter a number: ");
    end
else
    vector_input = [-2 4 9 -5 0 -1];
end

% multiplying everything by -1
for i = 1:length(vector_input)
    output(i) = vector_input(i) * -1;
end

% displaying output
disp(output);