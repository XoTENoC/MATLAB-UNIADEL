%% odd numbers
% file: q1a.m
%
% by Nathaniel Chang
% Created: 16/03/2021
% last edited: 16/03/2021
% programing (MATLAB and C) Semester 1

% intializing values
n = 0;
vector_odd = [1];

% asking user for input
n = input("how many od numbers do you want?: ");

n = n-1;

% creating the odd numbers
for i = [1:n]
    vector_odd = [vector_odd, (vector_odd(i)+2)];
end

% displaying vectors
disp(vector_odd);