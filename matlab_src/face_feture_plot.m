close all;
file = ['SU (',sprintf('%d',46),').tiff'];
I = imresize(imread([preText,file]),[150,120]);
[I_eye,I_nose,I_lip]=face_feature(I);

figure(1)
imshow(I);
figure(2)
subplot(221)
I1=I(40:129,30:89);
imshow(I1);
title('image')

subplot(222)
I_eye=I1(10:39,:);
imshow(I_eye);
title('eye')

subplot(223)
I_nose=I1(20:59,15:44);
imshow(I_nose);
title('nose')

subplot(224)
I_lip=I1(60:79,10:49);
imshow(I_lip);
title('lip')
