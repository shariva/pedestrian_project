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