%% makes ever number in a vectr and absolute number
% file: q2a.m
%
% by Nathaniel Chang
% Created: 16/03/2021
% last edited: 16/03/2021
% programing (MATLAB and C) Semester 1

% intializing values
n = 0;
vector_abs = [];

% asking for user input
n = input("how many numbers do you want in the vector (type '0' for default values): ");

% assigning default values are asking user for values
if n ~=0
    for i = 1:n
        vector_abs(i) = input("please enter a number: ");
    end
else
    vector_abs = [-2 4 9 -5 0 -1];
end

% making each number absolute
for i = 1:length(vector_abs)
    vector_abs(i) = abs(vector_abs(i));
end

% displaying output
disp(vector_abs)