%% BMI Calculator
% file: BMIcalc.m
%
% by Nathaniel Chang
% Created: 09/03/2021
% last edited: 09/03/2021
% programing (MATLAB and C) Semester 1

% --------------------  initialize values   -------------------
weight = 0;
height = 0;
BMI = 0;

% ------------------  asking for user input   -----------------
weight = input('please enter your wieght: ');
height = input('please enter your height: ');

% ---------------------  calculating BMI   --------------------
BMI = (weight / (height^2));

% ----------------  displaying the users BMI   ----------------
fprintf('your BMI is %.2f\n', BMI),