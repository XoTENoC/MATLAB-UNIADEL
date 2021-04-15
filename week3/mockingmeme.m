%% sponge bob mocking meme
% file: mockingmeme.m
%
% by Nathaniel Chang
% Created: 15/03/2021
% last edited: 15/03/2021
% programing (MATLAB and C) Semester 1

% --------------------  initialize values   -------------------
textInput = '';
outputText = '';
decider = 0;

% ------------------  asking for user input   -----------------
textInput = input("Please input a string: ", 's');

% -----------------  suffuling characters   -------------------

for i = 1 : length(textInput)
    % picking a random number between 1 and 10
    rng('shuffle');
    decider = randi(10, 1);

    % using decider to decide upper or lowercase
    if (decider > 5)
        outputText(i) = upper(textInput(i));
    else
        outputText(i) = lower(textInput(i));
    end

end

% --------------------  displaying string   -------------------
disp(outputText);