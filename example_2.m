img_color = imread('Im_3.png'); %reading the image
subplot(1,2,1), imshow(img_color); %displaying the image in the image
R = im2double(img_color);%convert the image to a double values
img_output = 2*log(1+R);%using the log formula to obtain the transformed image 
subplot(1,2,2), imshow(img_output);%displaying the output image after the 
%transformation
