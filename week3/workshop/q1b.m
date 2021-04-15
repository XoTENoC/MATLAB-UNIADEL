%% squaring ammount
% file: q1b.m
%
% by Nathaniel Chang
% Created: 16/03/2021
% last edited: 16/03/2021
% programing (MATLAB and C) Semester 1

% intializing values
n = 0;
vector_square = [];

% asking user for input
n = input("how many numbers do you want?: ");

% creating the odd numbers
for i = [1:n]
    vector_square = [vector_square, i^2];
end

% displaying vectors
disp(vector_square);