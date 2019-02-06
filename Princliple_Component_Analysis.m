%Generating Feature Matrix

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Import IMU_fork_sampled_eating_200 EMG_fork_sampled_eating_200
% IMU_fork_sampled_non_eating_200  EMG_fork_sampled_non_eating_200 
% from processed-data/new
       
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


IMU_EMG_eating = [IMU_fork_sampled_eating_200(:,3:12)  EMG_fork_sampled_eating_200(:,3:end)];

IMU_EMG_non_eating = [IMU_fork_sampled_non_eating_200(:,3:12)   EMG_fork_sampled_non_eating_200(:,3:end)];

full_feature_matrix = [IMU_EMG_eating ; IMU_EMG_non_eating];

[coeff,score,latent,tsquared,explained,mu] = pca(full_feature_matrix(:,1:end-1));

reconstructed_matrix = full_feature_matrix(:,1:end-1) * coeff(:,1:4);

% To plot comparison between pcaX vs pcaY of eating and non eating

hold on

xlabel("PCA3")
ylabel("PCA4")
title("Comarision")

scatter(reconstructed_matrix(1:201,2),reconstructed_matrix(1:201,4))
scatter(reconstructed_matrix(202:end,2),reconstructed_matrix(202:end,4))
legend('Eating','Not Eating')
hold off

% Plot of variance percentage of Principle components
hold on
title('Analysis of PCA')
ylabel("Percentage Variance")
xlabel("Principal Component")
bar(1:18,explained)

hold off