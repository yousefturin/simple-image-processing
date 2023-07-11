img_color = imread('Im_2.tif');%reading the image
img_color_double = double(img_color);%converting the image to double to get the white 
%color 
B = bitget(img_color_double,1);%using the bitget function to slice the image into 8 
%bit
subplot(2,5,10);%displaying the original image
imshow(img_color);
title('Original');
%getting the leas significant bit from that image and displaying it 
11 | P a g e
B_1 = bitget(img_color_double,1);
subplot(2,5,2);
imshow(B_1);
title('Bit plane 1');
%getting the second bit from that image and displaying it 
B_2 = bitget(img_color_double,2);
subplot(2,5,3);
imshow(B_2);
title('Bit plane 2');
%getting the third bit from that image and displaying it
B_3 = bitget(img_color_double,3);
subplot(2,5,4);
imshow(B_3);
title('Bit plane 3');
%getting the fourth bit from that image and displaying it
B_4 = bitget(img_color_double,4);
subplot(2,5,5);
imshow(B_4);
title('Bit plane 4');
%getting the fifth bit from that image and displaying it
B_5 = bitget(img_color_double,5);
subplot(2,5,6);
imshow(B_5);
title('Bit plane 5');
%getting the sixth bit from that image and displaying it
B_6 = bitget(img_color_double,6);
subplot(2,5,6);
imshow(B_6);
title('Bit plane 6');
%getting the seventh bit from that image and displaying it
B_7 = bitget(img_color_double,7);
subplot(2,5,7);
imshow(B_7);
title('Bit plane 7');
%getting the most significant bit and displaying it
MSB = bitget(img_color_double,8);
subplot(2,5,8);
imshow(MSB);
title('Bit plane 8');
%add the last three bit together to obtain the image only by it’s 6
th,7th and MSB bits
uint3Image = uint8 (32*B_6 + 64*B_7 + 128*MSB);
subplot(2,5,9);
imshow(uint3Image);
title('sum of last 3 bits');
