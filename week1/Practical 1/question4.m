%% Average cost of transpor for a city
% file: question4.m
%
% by Nathaniel Chang
% 03/03/2021
% programing (MATLAB and C) Semester 1

% firstly I'm going to assume that everyone in the city population drives a
% car to work everyday and that everyone in the city population works. I
% have also assumed that every one travels 11km to work, that it cost $1.79
% per litre of fuel and that the cost of car rego is $1600 per year all of
% these values are set except for the city population.

% asks user to input the city population
cityPop = input("Please input the city population: ");

% I assume that the distance traveled by everyone in the city is 11 kms
distanceTraveled = 11;
% I also assume that it cost $1.79 per liter of fuel
fuelCost = 1.79;
% I also assume the cost of car rego for a year is $1600
carRego = round(1600/365, 2);

% I also assume that for every km a person travels 1 litre of fuel is used
travelCost = distanceTraveled * fuelCost + carRego;

% then as everyone in the population travels by can to work, I multiply the
% cost of travel by the city population
popTravelCost = travelCost * cityPop;

% Displays the total cost of travel for the city population
disp(['The transportation cost of the city is $', num2str(abs(popTravelCost))]);
