%% Height of people in a vector
% file: heightsVector.m
%
% by Nathaniel Chang
% Created: 10/03/2021
% last edited: 10/03/2021
% programing (MATLAB and C) Semester 1

% --------------------  initialize values   -------------------
heights = [];

% ------------------  asking for user input   -----------------
for i = 1 : 5
    height(i) = input("enter height: ");
end

% ---------------  displaying all the heights   ---------------
for i = 1 : 5
    disp(height(i));
end