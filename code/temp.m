bird=imread('../data/einstein.bmp');
sobel=[1,2,1;0,0,0;-1,-2,-1];
corrFilter = imfilter(bird,sobel);
convFilter = imfilter(bird,sobel,'conv');
figure(1);
imshow(corrFilter);
figure(2);
imshow(convFilter);