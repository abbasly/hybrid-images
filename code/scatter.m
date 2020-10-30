dance = imread("../questions/RISDance.jpg");
timeArray = [];
imageSize = [];
filterSize = [];
for i = 3:2:15
    for j = 500:50:2800
        resized = imresize(dance, [j j]); 
        filter = ones(i,i);
        init = tic;
        filtered = imfilter(resized,filter);
        finish = toc(init);
        timeArray(end+1) = finish;
        imageSize(end+1) = (j*j)/(10^6);   %in megapixels
        filterSize(end+1) = i;
    end
end

scatter3(filterSize, imageSize,timeArray);
xlabel('Filter size');
ylabel('Image size in Mpix');
zlabel('Time');

