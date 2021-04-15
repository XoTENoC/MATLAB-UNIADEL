%% transformation of vectors and squared 2
% file: q1b.m
%
% by Nathaniel Chang
% Created: 16/03/2021
% last edited: 16/03/2021
% programing (MATLAB and C) Semester 1

% assigning a black vector to a, b and c
A = [];
B = [];
C = [];

% asking user for the camount of numbers in the vector A
count = input("Enter the amount the numbers in the vector A (if '0' is entered default values will be used): ");

% working out wether the user wants to use default values or assign there own
if count ~= 0
    for i = 1 : count
        % asking user to values
        A(i) = input("input a number: ");
    end
    else
        A = [-10:0.5:10];
end

% cubing each vector in a and assigning it to B

for i = 1 : length(A)
    B(i) = A(i) ^ 3;
    C(i) = pow2(A(i));
end

% displaying both vectors

disp(A);
disp(B);
disp(C);