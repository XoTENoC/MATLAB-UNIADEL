% function for testing if a number is bigger the another
% a1821595
% 08/04/2021

% defineing function
function [small, big] = compareNums(num1, num2)
    % checking the number if num1 if bigger than num2 then 
    % assign appropriatly if number assigne reversed order.
    if num1 > num2
        big = num1;
        small = num2;
    else
        big = num2;
        small = num1;
    end
    
end