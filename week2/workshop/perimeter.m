%% calculating perimeter of a rectangle
% file: perimeter.m
%
% by Nathaniel Chang
% Created: 09/03/2021
% last edited: 09/03/2021
% programing (MATLAB and C) Semester 1

% a = area
% w = width
% p = perimeter

% --------------------  initialize values   -------------------
w = 0;
h = 0;
p = 0;

% ------------------  asking for user input   -----------------
w = input('please enter the with of the rectangle: ');
h = input('please enter the height of the rectangle: ');

% --------------------  calculating area   --------------------
p = abs( 2 * (w + h) );

% ---------------------  displaying area   --------------------
disp(['the perimeter of the rectangle ', num2str(p)]);