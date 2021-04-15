%% adding the second vector to first in reverse order
% file: q2b.m
%
% by Nathaniel Chang
% Created: 18/03/2021
% last edited: 18/03/2021
% programing (MATLAB and C) Semester 1

% Initializing Vectors
A = [];
B = [];
newA = [];

% asking user for the how many numbers in each vector
count = input("Enter the amount the numbers in the vector A (if '0' is entered default values will be used): ");

% Assigning Vectors
if count ~= 0
    for i = 1 : count
        % asking user to values
        A(i) = input("input a number for A: ");
    end
    for i = 1 : count
        % asking user to values
        B(i) = input("input a number for B: ");
    end
    else
        A=[1:10];
        B=[11:20];
end

% Adding A to New A
for i = 1 : length(A)
    newA = [newA, A(i)];
end

% Adding B to New A
for i = length(B): -1 : 1
    newA = [newA, B(i)];
end

% display new A
disp(newA);
