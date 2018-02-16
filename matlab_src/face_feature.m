function [I_eye,I_nose,I_lip]=face_feature(I) 
I1=I(40:129,30:89);
I_eye=imresize( I1(10:39,:) ,0.8);
I_nose=imresize(I1(20:59,15:44),1);
I_lip=imresize(I1(60:79,10:49),1);

end



