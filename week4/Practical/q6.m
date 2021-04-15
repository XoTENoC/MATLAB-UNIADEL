%% flipping a picture
% file: q6.m
%
% by Nathaniel Chang
% Created: 25/03/2021
% last edited: 25/03/2021
% programing (MATLAB and C) Semester 1

imageData = imread('Kand.png'); % set up an empty array
numRows = size(imageData); % sets the image size to amount of rows
numCols = length(imageData); % sets the image size to amount of columns

flipped = []; % assign in a null vector of the flipped image.

% loop for creating the image
for row = [ 1 : numRows ]

    % asigning an empty vector for the image row
    imageRow=[];

    % loop for the a image row assing one shade to a row
    for col = [ 1:numCols ]

        % takes the pixel in the bottom left corner and puts it in the right corner, and reapeats
        % by putting each pixel into the next collumn to its oppisite in the other side of the image.
        pixelval = imageData(abs(row - 500), abs(col - 502));

        % concatinates the values above to the next pixel in the row
        imageRow = [imageRow pixelval];

    end

    % concatinates the row to the bottom of the image
    flipped = [flipped ; imageRow];

end

% display as an image
imshow(flipped);

% save as an image
imwrite(flipped,'KandFlipped.png');
% load an image
newImageData=imread('KandFlipped.png');
whos newImageData;