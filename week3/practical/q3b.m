%% how many leap years are in an array
% file: q3b.m
%
% by Nathaniel Chang
% Created: 18/03/2021
% last edited: 18/03/2021
% programing (MATLAB and C) Semester 1

% asking users for 2 years:
year1 = input("please input the first year: ");
year2 = input("please input the second year: ");

% assigning an array
yearArray = [year1:year2];

% initializing leap years array
leapYears = [];

% working out whether a year is a leap year
for i = 1 : length(yearArray)
    if mod(yearArray(i), 4) == 0
        leapYears = [leapYears, yearArray(i)];
    end
end

% Displaying Leap years from array
disp(leapYears)
