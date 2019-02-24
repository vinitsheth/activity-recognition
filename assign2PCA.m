users = [9  10 11 12 13 14 16 17 18 19 21 22 23 24 25 26 27 28 29 30 31 32 33 34 36 37 38 39 40 41];


for k = 1:length(users)
user = users(k);
eating = load (['processed-data/Assign2/' num2str(user) '_eating'  '.mat']);
eating = eating.eating;
eating = [eating ones(size(eating,1),1)];
not_eating = load(['processed-data/Assign2/' num2str(user) '_not_eating'  '.mat']);
not_eating = not_eating.not_eating;
not_eating = [not_eating zeros(size(not_eating,1),1)];

full_feature_matrix = [eating ; not_eating];
[coeff,score,latent,tsquared,explained,mu] = pca(full_feature_matrix(:,1:end-1));

reconstructed_matrix = full_feature_matrix(:,1:end-1) * coeff(:,1:4);
reconstructed_matrix_with_features = [reconstructed_matrix full_feature_matrix(:,end)];
save(['processed-data/Assign2/PCA/' num2str(user) '_all'  '.mat'],'reconstructed_matrix_with_features');
end
% 
% [coeff,score,latent,tsquared,explained,mu] = pca(full_feature_matrix(:,1:end-1));
% 
% reconstructed_matrix = full_feature_matrix(:,1:end-1) * coeff(:,1:4);
% reconstructed_matrix_with_features = [reconstructed_matrix full_feature_matrix(:,end)];

