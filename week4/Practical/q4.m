%% creating the image from white to black horizonaly
% file: q4.m
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

    % loop for the a image column assing one shade to a column
    for col = [ numCols : -1 : 2 ]

        % takes the column that it is on and divides it by the image size
        pixelval = col / imSize ;

        % concatinates the values above to the next pixel in the row
        imageRow = [imageRow pixelval];

    end
    
    % setting last pixel of the row to black
    imageRow = [imageRow 0];

    % concatinates the row to the bottom of the image
    imageData = [imageData ; imageRow];

end

% display as an image
imshow(imageData);

% save as an image
imwrite(imageData,'test4.png');

% load an image
newImageData=imread('test4.png');
whos newImageData;