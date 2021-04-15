%% creating the image from white to black verticaly
% file: q2.m
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
for row = [ numRows : -1 : 2 ]

    % asigning an empty vector for the image row
    imageRow=[];

    % loop for the a image row assing one shade to a row
    for col = [ 1 : numCols ]

        % takes the row that it is on and divides it by the image size
        pixelval = row / imSize ;

        % concatinates the values above to the next pixel in the row
        imageRow = [imageRow pixelval];

    end

    % concatinates the row to the bottom of the image
    imageData = [imageData ; imageRow];

end

% setting the last row to black
for row = [ 1:1 ]

    % asigning an empty vector for the image row
    imageRow=[];

    for col = [ 1 : numCols ]
        
        % assigns first pixel to black
        pixelval = 0;

        % concatinates the values above to the next pixel in the row
        imageRow = [imageRow pixelval];

    end
    
    % concatinates the row to the bottom of the image
    imageData = [imageData ; imageRow];

end

% display as an image
imshow(imageData);

% save as an image
imwrite(imageData,'test2.png');

% load an image
newImageData=imread('test2.png');
whos newImageData;