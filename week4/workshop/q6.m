% rotaing vectors

% assigning a set of numbers to A
a = [1 2 3 4];

% Initializing B
b = [];

b(length(a))= a(1);

% moving number across by 1
for i = 1 : length(a) - 1
    b(i) = a(i+1) ;
end

% displaying b
disp(b)