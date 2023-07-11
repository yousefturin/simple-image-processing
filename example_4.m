img_color = imread('Im_5.png'); %read the image 
subplot(2,2,1), imshow(img_color); %displaying the original image
R = im2double(img_color);%converting the elements of matrix to double
img_log = 0.8*log(1+R);%applying the log transformation equation 
img_law = 2*(R.^1.8);%applying the power transformation equation
subplot(2,2,2), imshow(img_log);%displaying the log image result
subplot(2,2,3), imshow(img_law);%displaying the power image result
