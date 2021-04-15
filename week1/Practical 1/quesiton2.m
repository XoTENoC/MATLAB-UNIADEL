%% Average usage of water used by a city
% file: question2.m
%
% by Nathaniel Chang
% 03/03/2021
% programing (MATLAB and C) Semester 1

% asks the user to input coty population
cityPop = input("Please input the city population: ");

% average water usage per person per day
waterPP = 0.273;
% average people to a household
avHousehold = 2.53;

% calculates the total daily water usage of the city per day
totalDailyWater =  waterPP*cityPop/avHousehold;

% displays the average water usuage per day
disp(['average water used per day is ', num2str(abs(totalDailyWater)), 'kl']);
