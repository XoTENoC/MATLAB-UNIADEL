%% is it divisable by for
% file: q3a.m
%
% by Nathaniel Chang
% Created: 18/03/2021
% last edited: 18/03/2021
% programing (MATLAB and C) Semester 1

% asking the user for a number
TestingNumber = input("please input a number: ");

% checking if number is divisable by 4
if mod(TestingNumber, 4) == 0
    disp('Divisable by 4')
end