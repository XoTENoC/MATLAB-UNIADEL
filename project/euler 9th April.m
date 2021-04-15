%% Euler Intergration
% file: euler.m
%
% by Nathaniel Chang
% Created: 07/03/2021
% last edited: 09/04/2021
% programing (MATLAB and C) Semester 1

% all equation use SI units, therefore all variables, inputs
% and results will be in SI units

% --------------------  initialize values   -------------------
% position vector (r)
x = [];
y = [];
z = [];

ur = [];

% interval bettween each point
interval = 0.001;

% Velocity Vector (v)
%v = [0, 3075, 0]; % for positional vector (42164000, 0, 0)
% v = [7500, 0, 0]; % for positional vector (0, 6878000, 0)
% v = [0, 1777, 0]; % for positional vector (42164000, 0, 0)
v = [];

% Vector scalar of (v)
vS = 0;

% Acceleration Vector (a)
a = [];

% Gravitational Parameter for Earth (GM)
GM = 3.986004418 * 10^(14);

earthR = 6371000;

% Ammount the function is looped
amount = 86400/0.001;

% --------------------  asking for input   --------------------
% x = input("please insert a x value: ");
% y = input("please insert a y value: ");
% z = input("please insert a z value: ");

% -------------------- pos and vec.m --------------------------

% --------- Loop for Making sure vectors are correct ----------

loopOn = 1; % making sure the loop will keep going

% making sure that first value of x is between 10000 and 100000
while loopOn == 1
    x(1) = input("please enter a value for x between 10000 and 100000: ");

    % checking if the input is valid
    if x(1) >= 10000 && x(1) <= 100000
        break
    else % asking the user to input correct value
        fprintf(2,'please input a valid number for x\n')
    end
end

% making sure that first value of y is between 10000 and 100000
while loopOn == 1
    y(1) = input("please enter a value for y between 10000 and 100000: ");

    % checking if the input is valid
    if y(1) >= 10000 && y(1) <= 100000
        break
    else % asking the user to input correct value
        fprintf(2,'please input a valid number for y\n')
    end
end

% making sure that first value of z is between 10000 and 100000
while loopOn == 1
    z(1) = input("please enter a value for z between 10000 and 100000: ");

    % checking if the input is valid
    if z(1) >= 10000 && z(1) <= 100000
        break
    else % asking the user to input correct value
        fprintf(2,'please input a valid number for z\n')
    end
end

% below is for testing purposes
% disp(x(1));
% disp(y(1));
% disp(z(1));

% --- using dot product to find a vector perpendicular to r ---
rng('shuffle')
v(1) = randi(20, 1);
v(3) = 0;
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

% making sure the position is above the earths radius
x(1) = x(1) + 6381000;
y(1) = y(1) + 6381000;
z(1) = z(1) + 6381000;

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

% -------------------  creating the orbit   -------------------
for i = 2 : amount

    % --------------------  creating modr   -------------------
    modr = sqrt((x(i - 1)^2) + (y(i - 1)^2) + (z(i - 1)^2));

    % ------------------  unit vector of (r)   ----------------
    ur(1) = x(i - 1) / modr;
    ur(2) = y(i - 1) / modr;
    ur(3) = z(i - 1) / modr;

    % ------------  creating cceleration cector   -------------
    a(1) = -ur(1) * (GM / modr^2);
    a(2) = -ur(2) * (GM / modr^2);
    a(3) = -ur(3) * (GM / modr^2);

    % creating the next position vector
    % x(i) = x(i-1) + ( interval * v(1) );
    % y(i) = y(i-1) + ( interval * v(2) );
    % z(i) = z(i-1) + ( interval * v(3) );
    x(i) = x(i - 1) + ( interval * v(1) ) + ( 0.5 * (interval^2) * a(1) );
    y(i) = y(i - 1) + ( interval * v(2) ) + ( 0.5 * (interval^2) * a(2) );
    z(i) = z(i - 1) + ( interval * v(3) ) + ( 0.5 * (interval^2) * a(3) );

    % creating the next velocity vector
    for j = 1 : 3

        v(j) = v(j) + (a(j) * interval);

    end


end

% ploting the orbit on the same graph as the sphere
plot3(x,y,z, '-')
grid on

axis equal

% labeling the axis
xlabel('x');
ylabel('y');
zlabel('z');

hold on

% creating a sphere to represent the earth
[x2,y2,z2] = sphere;
x2 = x2*6378000;
y2 = y2*6378000;
z2 = z2*6378000;

% ploting the sphere as a surface on the grid
surf(x2,y2,z2)

hold off

fprintf('done \n');