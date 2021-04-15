%% transformation of vectors
% file: q1a.m
%
% by Nathaniel Chang
% Created: 16/03/2021
% last edited: 16/03/2021
% programing (MATLAB and C) Semester 1

% assigning a vector to a variable
A = [-10:0.5:10];

% assigning a black vector to b
B = [];

% cubing each vector in a and assigning it to B

for i = 1 : length(A)
    B(i) = A(i) ^ 3;
end

% displaying both vectors

disp(A);
disp(B);
