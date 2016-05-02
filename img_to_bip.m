function [ bipimg ] = img_to_bip( imgpath )
%IMG_TO_BIP Summary of this function goes here
%   Detailed explanation goes here
    i = imread(imgpath);
    %Assuming this channel alone is sufficient
    greybayes = i(:,:,2);
    greater = greybayes > 128;
    bipimg= (greater * 2 ) - 1;

end