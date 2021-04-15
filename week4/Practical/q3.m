%% creating the image from black to white horizonaly
% file: q3.m
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

    % setting first pixel of the row to black
    imageRow = [imageRow 0];

    % loop for the a image column assing one shade to a column
    for col = [ 2 : numCols ]

        % takes the colum that it is on and divides it by the image size
        pixelval = col / imSize ;

        % concatinates the values above to the next pixel in the row
        imageRow = [imageRow pixelval];

    end

    % concatinates the row to the bottom of the image
    imageData = [imageData ; imageRow];

end

% display as an image
imshow(imageData);

% save as an image
imwrite(imageData,'test3.png');

% load an image
newImageData=imread('test3.png');
whos newImageData;