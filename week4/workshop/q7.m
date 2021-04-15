
% assigning a and b
a = [ 1 2 3 4 5 6 ];
b = [];

% indiviual for the first one
b(1) = a(1) + a(2);

% checking the the length of a in greater than 2
if length(a) > 2
    % adding the before and after
    for i = 2 : length(a) - 1
        b(i) = a(i-1) + a(i) + a(i +1);
    end
end

% adding the last one seperatly
b(length(a)) = a(end - 1) + a(end);

% displying b
disp(b);