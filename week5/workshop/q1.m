% read in ages and names
% set up result vectors
ages=[];
names=[];

% prompt for first age input
age=input('enter age ');

% read in both repeatedly and add to vectors
while(age~=-1)   % while the user has not entered -1 for age
    name=input('enter name ','s'); % read in string
    ages=[ages age];  % append to ages end
    names=[names string(name)]; % convert name to string and append 
    age=input('enter age '); % read in new age. 
end
% display resulting vectors
disp(names);
disp(ages);  