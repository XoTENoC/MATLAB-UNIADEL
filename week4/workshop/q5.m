% rotaing vectors

% assigning a set of numbers to A
a = [];

% Initializing B
b = [];

b(1) = a(end);

% moving number across by 1
for i = 2 : length(a)
    b(i) = a(i-1) ;
end

% displaying b
disp(b)