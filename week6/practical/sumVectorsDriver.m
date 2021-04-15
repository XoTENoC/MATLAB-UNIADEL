% driver for sumVectors.m
% a1821595
% 08/04/2021

% clearing all variables before running the script
clear all

% test case one
v1 = [1 2];
v2 = [3 4];

% inputing vectors into the function
sumVectors = sumVectors(v1,v2);
% printing expected and the output
fprintf("expected output 10, output %d\n", sumVectors);
clear all

% test case two
v1 = [4 5];
v2 = [3 4];

% inputing vectors into the function
sumVectors = sumVectors(v1,v2);
% printing expected and the output
fprintf("expected output 16, output %d\n", sumVectors);
clear all

% test case three
v1 = [1 2];
v2 = [3 1];

% inputing vectors into the function
sumVectors = sumVectors(v1,v2);
% printing expected and the output
fprintf("expected output 7, output %d\n", sumVectors);
clear all

% test case for
v1 = [0 0];
v2 = [0 0];

% inputing vectors into the function
sumVectors = sumVectors(v1,v2);
% printing expected and the output
fprintf("expected output 0, output %d\n", sumVectors);