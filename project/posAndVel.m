%%Creating a position and velocity vector
% file: posAndVel.m
%
% by Nathaniel Chang
% Created: 01/04/2021
% last edited: 01/04/2021
% programing (MATLAB and C) Semester 1

% --------------------  initialize values   -------------------
% position vector (r)
x = [];
y = [];
z = [];

% velocity vector (v)
v = [];

% Vector scalar of (v)
vS = 0;

% Gravitational Parameter for Earth (GM)
GM = 3.986004418 * 10^(14);

earthR = 6371000;

% --------- Loop for Making sure vectors are correct ----------

loopOn = 1; % making sure the loop will keep going

% making sure that first value of x is between 0 and 100000
while loopOn == 1
    x(1) = input("please enter a value for x between 0 and 100000: ");

    % checking if the input is valid
    if x(1) >= 0 && x(1) <= 100000
        break
    else % asking the user to input correct value
        fprintf(2,'please input a valid number for x\n')
    end
end

% making sure that first value of y is between 0 and 100000
while loopOn == 1
    y(1) = input("please enter a value for y between 0 and 100000: ");

    % checking if the input is valid
    if y(1) >= 0 && y(1) <= 100000
        break
    else % asking the user to input correct value
        fprintf(2,'please input a valid number for y\n')
    end
end

% making sure that first value of z is between 0 and 100000
while loopOn == 1
    z(1) = input("please enter a value for z between 0 and 100000: ");

    % checking if the input is valid
    if z(1) >= 0 && z(1) <= 100000
        break
    else % asking the user to input correct value
        fprintf(2,'please input a valid number for z\n')
    end
end

% below is for testing purposes
% disp(x(1));
% disp(y(1));
% disp(z(1));

% --- using dit product to find a vector perpendicular to r ---
rng('shuffle')
v(1) = randi(20, 1);
v(3) = randi(20, 1);
v(2) = (-1*((v(1)+x)+(v(3)+z)))/y;


% -------- checking the objects height above the earth --------

while loopOn == 1
    heightAboveEarth = sqrt((x(1)^2)+(y(1)^2)+(x(1)^2));

    % making sure that the object is 500km above the earth
    if heightAboveEarth <= 500000
        x(1) = x(1) + 250000;
        y(1) = y(1) + 250000;
        z(1) = z(1) + 250000;
    else
        break
    end
end

% below is for testing purposes
% disp(heightAboveEarth);

% making sure the position is above the earths atmosphere
x(1) = x(1) + 6371000;
y(1) = y(1) + 6371000;
z(1) = z(1) + 6371000;

% creating the final radius from the centre of the earth
radiusFromCentre = sqrt((x(1)^2)+(y(1)^2)+(x(1)^2));

% creating the length of the vector vector
vS = sqrt(GM/radiusFromCentre);

% Creating the multiplyer to create the final vector
f = vS / (sqrt(v(1)^2+v(2)^2+v(3)^2));

% Creating the final vector
v(1) = v(1)*f;
v(2) = v(2)*f;
V(3) = v(3)*f;


disp(x);
disp(y);
disp(z);
disp(heightAboveEarth);
disp(v);
disp(f);
disp(vS);