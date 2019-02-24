users = [9  10 11 12 13 14 16 17 18 19 21 22 23 24 25 26 27 28 29 30 31 32 33 34 36 37 38 39 40 41];

for k = 1:length(users)
user = users(k);
data = load (['processed-data/Assign2/PCA/' num2str(user) '_all'  '.mat']);
data = data.reconstructed_matrix_with_features;

end

individual_users_ans_decision_tree = [];
for k = 1:length(users)
user = users(k);
data = load (['processed-data/Assign2/PCA/' num2str(user) '_all'  '.mat']);
data = data.reconstructed_matrix_with_features;

index = randperm(size(data,1));
divider = floor(length(data)*0.6);
train_data = data (index(1: divider), :);
test_data = data (index(divider+1: end), :);

dtree = fitctree(train_data(:,1:end-1),train_data(:,end));

predictions = predict(dtree,test_data(:,1:end-1));

[confMat,order] = confusionmat(test_data(:,end),predictions);
for i =1:size(confMat,1)
    precision(i)=confMat(i,i)/sum(confMat(i,:)); 
end
precision(isnan(precision))=[];
Precision=sum(precision)/size(confMat,1);

for i =1:size(confMat,1)
    recall(i)=confMat(i,i)/sum(confMat(:,i));  
end

Recall=sum(recall)/size(confMat,1);

F_score=2*Recall*Precision/(Precision+Recall);

individual_users_ans_decision_tree = [individual_users_ans_decision_tree ; Precision Recall F_score]
end



% 
% individual_users_ans_decision_tree = [];
%% for k = 1:length(users)
% user = users(k);
% data = load (['processed-data/Assign2/PCA/all_data'  '.mat']);
% data = data.reconstructed_matrix_with_features;
% 
% index = randperm(size(data,1));
% divider = floor(length(data)*0.6);
% train_data = data (index(1: divider), :);
% test_data = data (index(divider+1: end), :);
% 
% dtree = fitctree(train_data(:,1:end-1),train_data(:,end));
% 
% predictions = predict(dtree,test_data(:,1:end-1));
% 
% [confMat,order] = confusionmat(test_data(:,end),predictions);
% for i =1:size(confMat,1)
%     precision(i)=confMat(i,i)/sum(confMat(i,:)); 
% end
% precision(isnan(precision))=[];
% Precision=sum(precision)/size(confMat,1);
% 
% for i =1:size(confMat,1)
%     recall(i)=confMat(i,i)/sum(confMat(:,i));  
% end
% 
% Recall=sum(recall)/size(confMat,1);
% 
% F_score=2*Recall*Precision/(Precision+Recall);
% 
% individual_users_ans_decision_tree = [Precision Recall F_score];
%% end