% picking a number for rock paper sccisors

% picking a random number
rng('shuffle'); 
randNumber = randi(3);

% raking 1 from the random number
finalRand = randNumber - 1;


% using the random number to pick rock paper or scissors
switch finalRand
    case 0
        disp('rock');
    case 1
        disp('paper');
    case 2
        disp('scissors')
end