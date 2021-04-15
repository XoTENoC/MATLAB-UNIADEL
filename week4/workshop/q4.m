% moving vectors across by one

% assigning a set of numbers to A
a = [1, 7, 3];

% Initializing B
b = [0];

% moving number across by 1
for i = 2 : length(a)
    b(i) = a(i-1) ;
end

% displaying b
disp(b)