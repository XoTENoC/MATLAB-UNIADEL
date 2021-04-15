%% Volume of a Box Calculator
% file: question1A.m
%
% by Nathaniel Chang
% 03/03/2021
% programing (MATLAB and C) Semester 1

% asks the user for the width of the box
width = input("Input the width: ");
% asks the user for the height of the box
height = input("Input the height: ");
% asks the user for the length of the box
length = input("Input the legth: ");

% calculates the volume of the box
volume = abs(width * height *length);

% displays the volume
disp(volume);