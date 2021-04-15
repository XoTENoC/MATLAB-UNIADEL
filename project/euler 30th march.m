%% Euler Intergration
% file: euler.m
%
% by Nathaniel Chang
% Created: 07/03/2021
% last edited: 30/03/2021
% programing (MATLAB and C) Semester 1

% --------------------  initialize values   -------------------
% position vector (r)
x = [];
y = [];
z = [];

ur = [];

% interval bettween each point
interval = 0.001;

% Velocity Vector (v) !needs to be changed buy the software
% v = [-150000, 30000, 12032];
v = [0, 3075, 0];

% Acceleration Vector (a)
a = [];

% Gravitational Parameter for Earth ()GM
GM = 39800000000000;

% Ammount the function is looped
amount = 86400/0.001;

% --------------------  asking for input   --------------------
x = input("please insert a x value: ");
y = input("please insert a y value: ");
z = input("please insert a z value: ");

% x(1) = x(1) * 39800000000000;
% y(1) = y(1) * 39800000000000;
% z(1) = z(1) * 39800000000000;

% --------------------  initialize values   -------------------
for i = 1 : amount
    disp(i);

    % --------------------  creating modr   -------------------
    modr = sqrt((x(end)^2) + (y(end)^2) + (z(end)^2));

    % ------------------  unit vector of (r)   ----------------
    ur(1) = x(end) / modr;
    ur(2) = y(end) / modr;
    ur(3) = z(end) / modr;

    % ------------  creating cceleration cector   -------------
    for j = 1 : 3

        a(j) = -ur(j) * (GM / modr);

    end

    % creating the next position vector
    x(end + 1) = x(end) + ( a(1) * v(1) );
    y(end + 1) = y(end) + ( a(2) * v(2) );
    z(end + 1) = z(end) + ( a(3) * v(3) );

    % creating the next velocity vector
    for j = 1 : 3

        v(j) = v(j) + (ur(j) * interval);

    end


end

plot3(x,y,z, '-')
grid on

disp(x)
disp(y);
disp(z);