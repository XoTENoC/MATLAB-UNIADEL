%sets the vector of numbers to the varible numbers
numbers = [1, 2, 3, 4, 5, 6, 7];

%initialises the the variable sum
sum = 0;

%starts a loop from to 1 to 7 adding the numbers inside the variable
 for i = [1:7]
     sum = sum + numbers(i);
 end
 
 %displays all the numbers added together
 disp(sum);