img_color =imread('Im_2.tif');%reading the image
subplot(1,2,1), imshow(img_color); %displaying the original image
[rows, cols] = size(img_color);%getting the rows and column size of that image 
10 | P a g e
I = ones(rows, cols);%creating a matrix that have only 1 value in it
A = im2double(img_color);% convert the elements in the matrix to double integers
new_img = I - A; % subtract the double value from 1 to get the inverted image
subplot(1,2,2), imshow(new_img); %displaying the inverted imag
