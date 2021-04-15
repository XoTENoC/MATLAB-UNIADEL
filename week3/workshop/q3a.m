%% calculates the mean of a vector
% file: q3a.m
%
% by Nathaniel Chang
% Created: 16/03/2021
% last edited: 16/03/2021
% programing (MATLAB and C) Semester 1

% intializing values
n = 0;
vector_mean = [];
mean_total = 0;

% asking for user input
n = input("how many numbers do you want in the vector (type '0' for default values): ");

% assigning default values are asking user for values
if n ~=0
    for i = 1:n
        vector_mean(i) = input("please enter a number: ");
    end
else
    vector_mean = [-2 4 9 -5 0 -1];
end

% making the mean
for i = 1:length(vector_mean)
    mean_total = mean_total + vector_mean(i);
end

mean_total = mean_total / length(vector_mean);

% displaying output
disp(mean_total);