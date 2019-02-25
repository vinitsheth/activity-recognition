
[coeff_emg,score,latent,tsquared,explained,mu] = pca(EMG_fork(:,3:end-1));


figure;
hold on
title('Analysis of PCA')
ylabel("Percentage Variance")
xlabel("Principal Component")
bar(1:8,explained)

hold off

[coeff_imu,score_imu,latent_imu,tsquared_imu,explained_imu,mu_imu] = pca(IMU_fork(:,3:end-1));


figure;
hold on
title('Analysis of PCA')
ylabel("Percentage Variance")
xlabel("Principal Component")
bar(1:10,explained_imu)

hold off
