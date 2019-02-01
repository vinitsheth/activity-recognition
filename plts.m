%plots

plot( 1:length(IMU_mean_eating),IMU_mean_eating)
xlabel("samples")
ylabel(" Mean")
title("Orientation X")
hold on
plot( 1:length(IMU_mean_non_eating),IMU_mean_non_eating)