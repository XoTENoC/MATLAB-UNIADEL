% driver for minMaxDrivers.m
% a1821595
% 08/04/2021

% clearing all variables before running the script
clear all

% test case one
% input vectors
v1 = [1 2];
v2 = [3 4];

% inputing input vectors in to function
[min max] = minMaxVectors(v1,v2);
% displaing expected and actuall output
fprintf("expected numbers numbers %d, %d\n", v1(1), v2(2));
fprintf("output numbers %d, %d\n", min, max);
clear all

% test case two
% input vectors
v1 = [2 2];
v2 = [2 2];

% inputing input vectors in to function
[min max] = minMaxVectors(v1,v2);
% displaing expected and actuall output
fprintf("expected numbers numbers %d, %d\n", v1(1), v1(1));
fprintf("output numbers %d, %d\n", min, max);
clear all

% test case three
% input vectors
v1 = [5 -2];
v2 = [10 4];

% inputing input vectors in to function
[min max] = minMaxVectors(v1,v2);
% displaing expected and actuall output
fprintf("expected numbers numbers %d, %d\n", v1(2), v2(1));
fprintf("output numbers %d, %d\n", min, max);
clear all

% test case four
% input vectors
v1 = [0 1];
v2 = [0 0];

% inputing input vectors in to function
[min max] = minMaxVectors(v1,v2);
% displaing expected and actuall output
fprintf("expected numbers numbers %d, %d\n", v1(1), v1(2));
fprintf("output numbers %d, %d\n", min, max);
clear all

% test case five
% input vectors
v1 = [1 10];
v2 = [3 -9];

% inputing input vectors in to function
[min max] = minMaxVectors(v1,v2);
% displaing expected and actuall output
fprintf("expected numbers numbers %d, %d\n", v2(2), v1(2));
fprintf("output numbers %d, %d\n", min, max);
clear all