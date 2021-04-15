%% ploting points
% file: plotingPoints.m
%
% by Nathaniel Chang
% Created: 07/03/2021
% last edited: 07/03/2021
% programing (MATLAB and C) Semester 1

% --------------------  initialize values   -------------------
x = 0;
y = 0;
z = 0;
velocityVectory = [2 3 4];
loopAmount = 0;

% --------------------  asking for input   --------------------
x = input("please insert a x value: ");
y = input("please insert a y value: ");
z = input("please insert a z value: ");
loopAmount = input("Please enter the amount of times you would like to loop: ");

% -------------------  adding two vetors   --------------------
for i = 1 : loopAmount
    
    % ---------------- adding the two vectors -----------------
    x(end + 1) = x(end) + velocityVectory(1);
    y(end + 1) = y(end) + velocityVectory(2);
    z(end + 1) = z(end) + velocityVectory(3);

end

plot3(x, y, z, 'o');