% initialize values
vec = [];
min = 0;
max = 0;
all = 0;

% prodducing numbers for the array
for i = 1 : 6
   rng('shuffle'); 
   vec(end + 1) = randi(20);
end

% assigning the fist number of the array to min and max
min = vec(1);
max = vec(1);

% checking the the max and min number fo the array
for i = 1 : 5
   
    if min > vec(i + 1)
        min = vec(i + 1);
    end
    
    if max < vec(i + 1)
        max = vec(i + 1);
    end
    
end

% adding all the numbers in the array together
all = cumsum(vec);

% displaying all the values in the variables
disp(vec);
disp(['the minimum number of the array is ', num2str(min)]);
disp(['the maximum number of the array is ', num2str(max)]);
disp(['the cumlative number of the array is ', num2str(all(6))]);