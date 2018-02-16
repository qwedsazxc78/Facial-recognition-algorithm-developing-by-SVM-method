clear;clc;close all;
preText = 'C:\Users\LAB301\Desktop\face_database\';
NE = 75;
AN = 75;
DI = 75;
FE = 75; 
HA = 75;
SU = 75;
% total=AN+DI+FE+HA+NE+SU;
total=NE+AN+DI+FE+HA+SU;
train_eye=[];
train_nose=[];
train_lip=[];
test_eye=[];
test_nose=[];
test_lip=[];


for i=1:NE
    file = ['NE (',sprintf('%d',i),').tiff'];
    I = imresize(imread([preText,file]),[150,120]);
    [I_eye,I_nose,I_lip]=face_feature(I);
    if i<=50
    train_eye=[train_eye ;I_eye(:)'];
    train_nose=[train_nose ;I_nose(:)'];
    train_lip=[train_lip ;I_lip(:)'];
    else 
    test_eye=[test_eye ;I_eye(:)'];
    test_nose=[test_nose ;I_nose(:)'];
    test_lip=[test_lip ;I_lip(:)'];   
    end
    disp(file);
end

for i=1:AN
    file = ['AN  (',sprintf('%d',i),').tiff'];
    I = imresize(imread([preText,file]),[150,120]);
    [I_eye,I_nose,I_lip]=face_feature(I);
    if i<=50
    train_eye=[train_eye ;I_eye(:)'];
    train_nose=[train_nose ;I_nose(:)'];
    train_lip=[train_lip ;I_lip(:)'];
    else
    test_eye=[test_eye ;I_eye(:)'];
    test_nose=[test_nose ;I_nose(:)'];
    test_lip=[test_lip ;I_lip(:)'];   
    end
    disp(file);
end

for i=1:DI
    file = ['DI (',sprintf('%d',i),').tiff'];
    I = imresize(imread([preText,file]),[150,120]);
    [I_eye,I_nose,I_lip]=face_feature(I);
    if i<=50
    train_eye=[train_eye ;I_eye(:)'];
    train_nose=[train_nose ;I_nose(:)'];
    train_lip=[train_lip ;I_lip(:)'];
    else
    test_eye=[test_eye ;I_eye(:)'];
    test_nose=[test_nose ;I_nose(:)'];
    test_lip=[test_lip ;I_lip(:)'];   
    end
    disp(file);
end

for i=1:FE
    file = ['FE (',sprintf('%d',i),').tiff'];
    I = imresize(imread([preText,file]),[150,120]);
    [I_eye,I_nose,I_lip]=face_feature(I);
    if i<=50
    train_eye=[train_eye ;I_eye(:)'];
    train_nose=[train_nose ;I_nose(:)'];
    train_lip=[train_lip ;I_lip(:)'];
    else
    test_eye=[test_eye ;I_eye(:)'];
    test_nose=[test_nose ;I_nose(:)'];
    test_lip=[test_lip ;I_lip(:)'];   
    end
    disp(file);
end

for i=1:HA
    file = ['HA (',sprintf('%d',i),').tiff'];
    I = imresize(imread([preText,file]),[150,120]);
    [I_eye,I_nose,I_lip]=face_feature(I);
    if i<=50
    train_eye=[train_eye ;I_eye(:)'];
    train_nose=[train_nose ;I_nose(:)'];
    train_lip=[train_lip ;I_lip(:)'];
    else
    test_eye=[test_eye ;I_eye(:)'];
    test_nose=[test_nose ;I_nose(:)'];
    test_lip=[test_lip ;I_lip(:)'];   
    end
    disp(file);
end

for i=1:SU
    file = ['SU (',sprintf('%d',i),').tiff'];
    I = imresize(imread([preText,file]),[150,120]);
    [I_eye,I_nose,I_lip]=face_feature(I);
    if i<=50
    train_eye=[train_eye ;I_eye(:)'];
    train_nose=[train_nose ;I_nose(:)'];
    train_lip=[train_lip ;I_lip(:)'];
    else
    test_eye=[test_eye ;I_eye(:)'];
    test_nose=[test_nose ;I_nose(:)'];
    test_lip=[test_lip ;I_lip(:)'];   
    end
    disp(file);
end




