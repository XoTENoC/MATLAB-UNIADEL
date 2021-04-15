%% sum of 5 random numbers
% file: sumRands.m
%
% by Nathaniel Chang
% Created: 10/03/2021
% last edited: 10/03/2021
% programing (MATLAB and C) Semester 1

% --------------------  initialize values   -------------------
numsum = [];

% ---------------------  picking values   ---------------------
for i = 1 : 5
    rng('shuffle'); 
    numsum(end + 1) = randi(10);
end

% ------------------  adding all the numbers   ----------------
sumtotal = cumsum(numsum);

% --------------------  displaying total   --------------------
disp(sumtotal(5));