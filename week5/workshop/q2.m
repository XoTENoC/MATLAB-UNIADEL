% define a vector
A=[ 1 5 5 7 3 2 9 10 ];

% set the first index
i=1;

% print the first element of the vector and increment index
fprintf('%0.0f ',A(i));
i=i+1;

% while we haven't reached end and we are ascending 
while( i<length(A) && A(i)>=A(i-1))  % why won't this cause an error?
    fprintf('%0.0f ',A(i));  % print current elements
    i=i+1;                   % increment index
end

fprintf('\n');               % print newline