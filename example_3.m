img_color = imread('Im_4.png'); %reading the image 
subplot(1,2,1), imshow(img_color); %displaying the original image
R = im2double(img_color);%converting the elements in matrix to double 
img_color2 = 2*(R.^1.8);%applying the power transformation equation
subplot(1,2,2), imshow(img_color2);%displaying the result image
