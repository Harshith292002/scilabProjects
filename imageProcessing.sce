
x=imread("/Users/harshith/Downloads/cameraman.jpg");
figure; imshow(x)
redChannel=x(:,:,1);greenChannel=x(:,:,2);blueChannel=x(:,:,3);


//Method 1
whitePixels=redChannel==255 & greenChannel==255&blueChannel==255;
count = sum(whitePixels(:));
disp("by method-1 number of white pixels = ", count)

//Method-2
b11=rgb2gray(x); 
// convert gray image 
figure; 
imshow(b11) 
whitePixels = b11== 255 
blackPixels=b11==0 
count1 = sum(whitePixels(:)); 
count2= sum(blackPixels(:));
disp( "by method-2 number of white pixels=", count1) 
disp( "by method-2 number of black pixels=", count2)

//Method-3
 a=im2double(b11);
 //im2double(I) converts the image I to double precision.
// I can be a grayscale intensity image, a truecolor image, or a binary image.
// im2double rescales the output from integer data types to the range [0, 1].
 // black correspond to zero and 
// white correspond to one if image is double format 
b=find(a==0); // find black pixels 
w=find(a==1); // find white pixels 
numBlackPixels = length(b); // Count the number of linear indexes returned. 
numWhitePixels = length(w); // Count the number 
disp( "by method-3 number of white pixels=", numWhitePixels ) 
disp( "by method-3 number of black pixels=", numBlackPixels)


