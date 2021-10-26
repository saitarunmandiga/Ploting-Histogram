clc; 
clear all; 
close all;

img=imread('Image1.png');
im=rgb2gray(img);
imshow(im)
title('Image 1 in grayscale')
figure(1)
hold on

[r,c]=size(im);

level=1:256;
n=0:255;
total=0;

for l=1:256
    for loop1=1:r
        for loop2=1:c
            
            if im(loop1,loop2)==l-1
                total=total+1;
            end
        end
    end
            level(l)=total;
            total=0;
end

figure(2)
disp(level')
stem(n,level); 
grid on;
ylabel('number of pixels');
xlabel('intensity level'); title('Histogram for Image 1')
