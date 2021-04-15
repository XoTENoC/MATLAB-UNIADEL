%% white corners black center
% file: q5.m
%
% by Nathaniel Chang
% Created: 23/03/2021
% last edited: 23/03/2021
% programing (MATLAB and C) Semester 1

imageData=[]; % set up an empty array
imSize=100; % sets the image size
numRows=imSize; % sets the image size to amount of rows
numCols=imSize; % sets the image size to amount of columns

% loop for creating the image
for row = [ 1 : numRows ]

    % asigning an empty vector for the image row
    imageRow=[];

    % loop for the a image row assing one shade to a row
    for col = [ 1:numCols ]

        % takes the col and row that is is on subs 51 from both then divides seperatly by 100 then adds them together
        pixelval = ((abs(col-51))/100 + (abs(row-51))/100);

        % concatinates the values above to the next pixel in the row
        imageRow = [imageRow pixelval];

    end

    % concatinates the row to the bottom of the image
    imageData = [imageData ; imageRow];

end

imageData(1,  1) = 1;
imageData(1, numCols) = 1;
imageData(numRows, 1) = 1;
imageData(numRows, numCols) = 1;

% display as an image
imshow(imageData);

% save as an image
imwrite(imageData,'test5.png');
% load an image
newImageData=imread('test5.png');
whos newImageData;