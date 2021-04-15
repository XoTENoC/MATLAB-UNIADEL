%% Euler Intergration
% file: euler.m
%
% by Nathaniel Chang
% Created: 07/03/2021
% last edited: 07/04/2021
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

% Velocity Vector (v) !needs to be changed buy the software
%v = [0, 3075, 0]; % for positional vector (42164000, 0, 0)
% v = [7500, 0, 0]; % for positional vector (0, 6878000, 0)
% v = [0, 1777, 0]; % for positional vector (42164000, 0, 0)
v = [968.6386107, -5702.717374, 0];

% Acceleration Vector (a)
a = [];

% Gravitational Parameter for Earth (GM)
GM = 3.986004418 * 10^(14);

% Ammount the function is looped
amount = 86400/0.001;

% --------------------  asking for input   --------------------
% x = input("please insert a x value: ");
% y = input("please insert a y value: ");
% z = input("please insert a z value: ");


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