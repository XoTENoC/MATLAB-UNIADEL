%% Average usage of water used by Adelaide
% file: question3.m
%
% by Nathaniel Chang
% 03/03/2021
% programing (MATLAB and C) Semester 1

% Input City population from the user
cityPop = input("Please input the city population: ");
% average water usage per person per day
waterPP = 0.273;
% average people to a household
avHousehold = 2.53;
% amaount of water in the desalination plant
totalWater = 300000;

% calculates the total daily water usage of the city per day
totalDailyWater =  waterPP*cityPop/avHousehold;

% decimal percentage of water the city uses from desalination plant
waterUsage = totalDailyWater / totalWater;

% conveting to percentage
percentage = waterUsage * 100;

% displays the average water usuage per day
disp(['The City uses ', num2str(percentage), '% of the water in the desalination plant']);
