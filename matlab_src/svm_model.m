
%/////////scall the train and test data////////////
%training_instance_matrix = double([train_eye train_nose train_lip]);
training_instance_matrix = double([train]);

for(i=1:size(training_instance_matrix,2))
    scalling1(i)=max( training_instance_matrix(:,i) );
    scalling2(i)=min( training_instance_matrix(:,i) );
    if (scalling1(i)==0)
        scalling1(i)=1;
    end
    scalling(i)=scalling1(i)-scalling2(i);
    training_instance_matrix(:,i) = training_instance_matrix(:,i)/scalling(i);
end
% testing_instance_matrix = double([test_eye test_nose test_lip]);
testing_instance_matrix = double([test]);
for(i=1:size(testing_instance_matrix,2) )
    scalling_test1(i)=max(testing_instance_matrix(:,i));
    scalling_test2(i)=min(testing_instance_matrix(:,i));
    if (scalling_test1(i)==0)
        scalling_test1(i)=1;
    end
    scalling_test(i)=scalling_test1(i)-scalling_test2(i);
    testing_instance_matrix(:,i)=testing_instance_matrix(:,i)/scalling_test(i);
end
%//////////////////////cost function and gamma value/////////////////////
model={};
gamma=2.^(-14:-6);
cost=2.^(-5:3);


%///////////////////////train////////////////////////
for i=1:6
training_label_vector=zeros(300,1);
training_label_vector(50*(i-1)+1:50*i) = ones(50,1) ;
    for j=1:length(cost)
        for k=1:length(gamma)
        model{j,k,i} = svmtrain(training_label_vector, training_instance_matrix, ['-c ' num2str(cost(j)) , ' -g ' num2str(gamma(k))] ) ;
        
        end
    end
    display(i)
end




