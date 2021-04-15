% creating the running average of the a vector

% assigning a set of numbers to A
a = [1, 2, 3];

% Initializing B
b = [];

% creating total sum
tSum = 0;

% creating average
tAvg = 0;

% creating the average of the vector
for i = 1 : length(a)

    % adding next number
    tSum = tSum + a(i);

    % averaging total
    tAvg = tSum / i;

    % assigning verage to b
    b(i) = tAvg;

end

% displaying b
disp(b)