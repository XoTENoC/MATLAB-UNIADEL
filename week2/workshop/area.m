%% calculating area of a rectangle
% file: area.m
%
% by Nathaniel Chang
% Created: 09/03/2021
% last edited: 09/03/2021
% programing (MATLAB and C) Semester 1

% a = area
% w = width
% h = height

% --------------------  initialize values   -------------------
w = 0;
h = 0;
a = 0;

% ------------------  asking for user input   -----------------
w = input('please enter the with of the rectangle: ');
h = input('please enter the height of the rectangle: ');

% --------------------  calculating area   --------------------
a = abs(w * h);

% ---------------------  displaying area   --------------------
disp(['the area of the rectangle ', num2str(a)]);