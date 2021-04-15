%% greetings
% file: greeting.m
%
% by Nathaniel Chang
% Created: 09/03/2021
% last edited: 09/03/2021
% programing (MATLAB and C) Semester 1

% ------------------  asking for user input   -----------------
animalType = input('Please enter type of animal: ', 's');
animalName = input('Please enter name of animal: ', 's');
animalActivity = input('Please enter an activity: ', 's');

% -------------------  displaying activity   ------------------
disp(['I saw your ', animalType, ', ', animalName, ', ', animalActivity, ' in my garden']);