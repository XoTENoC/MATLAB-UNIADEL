%% modus of a 3d vector
% file: mod3dVector.m
%
% by Nathaniel Chang
% Created: 06/03/2021
% last edited: 06/03/2021
% programing (MATLAB and C) Semester 1

% --------------------  initialize values   -------------------
vector1 = 0;
modVector = 0;

% --------------------  asking for input   --------------------
vector1 = input("please insert a vector 1 enclosed by [] brackets: ");

disp(vector1);

% -----------------  modulus the two vecotrs   ----------------
% -------------------  squaring each number  ------------------
for i = 1 : length(vector1)
    vector1(i) = vector1(i) ^ 2;
    modVector = modVector + vector1(i);
end
% -------------------  squarerooting final  -------------------
modVector = sqrt(modVector);

% -------------------  displaying modulus  --------------------
disp(modVector);