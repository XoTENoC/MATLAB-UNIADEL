%% culative product
% file: q3b.m
%
% by Nathaniel Chang
% Created: 16/03/2021
% last edited: 16/03/2021
% programing (MATLAB and C) Semester 1

% intializing values
n = 0;
vector_product = [];
product = 0;

% asking for user input
n = input("how many numbers do you want in the vector (type '0' for default values): ");

% assigning default values are asking user for values
if n ~=0
    for i = 1:n
        vector_product(i) = input("please enter a number: ");
    end
else
    vector_product = [-2 4 9 -5 0 -1];
end

% making the product
if length(vector_product) == 1
    product = vector_product(1);
else
    product = vector_product(1);
    for i = 1:length(vector_product)
        product = product * vector_product(i);
    end
end

% displaying output
disp(product);