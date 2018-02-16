
testing_label_vector = ones(25,1);
best_model=zeros(3,6);
predicted_label={};
accuracy={};

face={'No expression','Angry','Disgust','Fear','Happy','Surprise'};

for i=1:6   
    for j=1:length(cost)
        for k=1:length(gamma)
         [predicted_label{j,k,i}, accuracy{j,k,i}] = svmpredict(testing_label_vector, testing_instance_matrix((25*(i-1)+1):25*i,:), model{j,k,i} );
            if (accuracy{j,k,i}(1)>best_model(1,i) )
             best_model(1,i)=accuracy{j,k,i}(1);
             best_model(2,i)=j;
             best_model(3,i)=k;
            end
        end
    end   
    display(i)
end


for i=1:6
    display(['the best model for ',face{i},' has the ',num2str(best_model(1,i)),...
        ' % accuracy ,the cost function is 2^',num2str(best_model(2,i)-16),', and the gamma is 2^', num2str(best_model(3,i)-6)]);
    
end


