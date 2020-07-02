clc;
clear all;
close all;
    %read video file
    video = VideoReader('G:\B.Tech\3 TY\SEM 6\MP\videos\desert.mp4');
    
    video.currentTime = 7;
    I = readFrame(video);
    imwrite(I,"G:\B.Tech\3 TY\SEM 6\MP\videos\desertmat1.png");
    video.currentTime = 11;
    I = readFrame(video);
    imwrite(I,"G:\B.Tech\3 TY\SEM 6\MP\videos\desertmat2.png");
    
    
I1 = imread("G:\B.Tech\3 TY\SEM 6\MP\videos\desertmat1.png");
I2 = imread("G:\B.Tech\3 TY\SEM 6\MP\videos\desertmat2.png");
[m,n] = size(I2);
f = imread("G:\B.Tech\3 TY\SEM 6\MP\videos\desertf.png");

for i = 1:m
    for j = 1:1280
        for k = 1:3
            I3(i,j,k) = max(I2(i,j,k)-I1(i,j,k),I1(i,j,k)-I2(i,j,k));
        end
    end
end
t = rgb2gray(I3);
k = rgb2gray(f);
I4 = 0.000000005 * xcorr2(t,k);

figure;
subplot 223
imshow(I3);
title("I2-I1");
subplot 222
imshow(I2);
title("2nd");
subplot 221
imshow(I1);
title("1st");
subplot 224
imshow(I4);
title("correlation");
figure;
imshow(f);
title("filter");