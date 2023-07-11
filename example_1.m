img_color = imread('Im_1.png');%reading the image
img_gray = rgb2gray(img_color);%converting image to gray scale
 subplot(1,2,1), imshow(img_gray);%show the image in the first position 
[rows, cols] = size(img_gray);%getting the row and column size of image
noOfDesiredIntensityLevels = 2; %assigning the number of intensity levels
step = ceil(255/(noOfDesiredIntensityLevels - 1));% rounding the matrix number
new_img = ceil(img_gray./step)*step;%rounding the number that we got from the step
 subplot(1,2,2), imshow(new_img);
