img_color = imread('Im_1.png');%reading the image
img_gray = rgb2gray(img_color);%converting it to a gray scale
imshow(img_gray);%display the gray image
Threshold_1 = 128;%assigning thresholding values 
Threshold_2 = 100;
Threshold_3 = 130;
Threshold_4 = 220;
img_bin_128_1 = (img_gray < Threshold_1);%logic operation to see if the element of 
%array is greater than the threshold value then assigning it as zero in this case 
%black
A(img_bin_128_1) = 0; 
9 | P a g e
img_bin_128_2 = (img_gray >= Threshold_1); %logic operation to see if the element of 
%array is smaller than the threshold value then assigning it as 255 in this case 
%white
A(img_bin_128_2) = 255; 
img_bin_100_1 = (img_gray < Threshold_2);
A(img_bin_100_1) = 0; 
img_bin_100_2 = (img_gray >= Threshold_2);
A(img_bin_100_2) = 255; 
img_bin_180_1 = (img_gray < Threshold_3);
A(img_bin_180_1) = 0; 
img_bin_180_2 = (img_gray >= Threshold_3);
A(img_bin_180_2) = 255; 
img_bin_220_1 = (img_gray < Threshold_4);
A(img_bin_220_1) = 0; 
img_bin_220_2 = (img_gray >= Threshold_4);
A(img_bin_220_2) = 255; 
%displaying all the images with respect to threshold 
subplot(4,3,1); imshow(img_gray);
title("Gray Image");
subplot(4,3,2); imshow(img_bin_128_1);
title("Threshold 0 <128 to white");
subplot(4,3,3); imshow(img_bin_128_2);
title("Threshold 0 >128 to black");
subplot(4,3,5); imshow(img_bin_100_1);
title("Threshold 0 <100 to white");
subplot(4,3,6); imshow(img_bin_100_2);
title("Threshold 0 >100 to black");
subplot(4,3,8); imshow(img_bin_180_1);
title("Threshold 0 <180 to white");
subplot(4,3,9); imshow(img_bin_180_2);
title("Threshold 0 >180 to black");
subplot(4,3,11); imshow(img_bin_220_1);
title("Threshold 0 <220 to white");
subplot(4,3,12); imshow(img_bin_220_2);
title("Threshold 0 >220 to black");
