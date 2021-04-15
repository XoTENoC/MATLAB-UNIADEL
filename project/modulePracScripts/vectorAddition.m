%% Practicing Vector addition
% file: vectorAddition.m
%
% by Nathaniel Chang
% Created: 06/03/2021
% last edited: 06/03/2021
% programing (MATLAB and C) Semester 1

% --------------------  initialize values   -------------------
vector1 = 0;
vector2 = 0;
finalVector = 0;

% --------------------  asking for input   --------------------
vector1 = input("please insert a vector 1 enclosed by [] brackets: ");
vector2 = input("please insert a vector 2 enclosed by [] brackets: ");

disp(vector1);
disp(vector2);

% -----------------  adding the two vecotrs   -----------------
for i = 1 : length(vector1)
    finalVector(i) = vector1(i) + vector2(i);
end

% -----------------  displays the resultant   -----------------
disp(finalVector);