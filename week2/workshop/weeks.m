%% how many weeks your money will last
% file: weeks.m
%
% by Nathaniel Chang
% Created: 09/03/2021
% last edited: 09/03/2021
% programing (MATLAB and C) Semester 1

% --------------------  initialize values   -------------------
money = 0;
expenditure = 0;
weeksRemaining = 0;

% ------------------  asking for user input   -----------------
money = input('what is your balance: ');
expenditure = input('how much did you use this week: ');

% ------------------  calculating weeks left   ----------------
weeksRemaining = abs(money / expenditure);

% ------------------  displaying weeks left   -----------------
disp(['you have ', num2str(weeksRemaining), ' week(s) remaining']);
