close all;
clear all;

im = imread('Number Plate Images/Image1.png');
imgray = grb2gray(im);
imbin = imbinarize(imgray);
im = edge(imgray, 'prewitt');

%find the Location of the Number Plate.
Iprops = regionprops(im,'BoundingBox','Area', 'Image');
area = Iprops.Area;
count = numel(Iprops);
maxa = area;
boundingBox = Iprops.BoundingBox;
for i = 1:count
    if maxa < Iprops(i).Area
        maxa = Iprops(i).Area;
        boundingBox=Iprops(i).BoundingBox;
    end
end

%Getting the Number Plate Area.
im = imcrop(imbin, boundingBox);
%Removing Object If the Widht if More Than 500.
im = bwareaopen(~im, 500);

%Get Width.
[h, w] = size(im);

imshow(im);

%Reading the Letter.
Iprops = regionprops(im, 'BoundingBox', 'Area', 'Image');

count = numel(Iprops);
%Initialzing the Variable for Number Plate String.
noPlate[];

for i = 1:count
    ow = length(Iprops(i).Image(1,:));
    oh = length(Iprops(i).Image(:,1));
    if ow<(h/2) & oh>(h/3)
        %Reading the Letter Corresponding to the Binary Image.
        letter = Letter_detection(Iprops(i).Image);
        noPlat = [noPlate letter];
    end
end