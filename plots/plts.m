%plots

% IMU mean
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Orientation X eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,3))
hold off
% hold on
% plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,3))

figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Orientation Y eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,4))
hold off
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Orientation Z eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,5))
hold off
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Orientation W eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,6))
hold off
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Accelerometer X eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,7))
hold off
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Accelerometer Y eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,8))
hold off
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Accelerometer Z eating ")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,9))
hold off
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Gyroscope X eating ")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,10))
hold off
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Gyroscope Y eating ")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,11))
hold off
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Gyroscope Z eating ")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,12))
hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Orientation X not eating")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,3))
% hold hold offon
% plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,3))

figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Orientation Y not eating")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,4))
hold off
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Orientation Z not eating")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,5))
hold off
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Orientation W not eating")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,6))
hold off
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Accelerometer X not eating")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,7))
hold off
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Accelerometer Y not eating")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,8))
hold off
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Accelerometer Z not eating ")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,9))
hold off
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Gyroscope X not eating ")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,10))
hold off
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Gyroscope Y not eating ")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,11))
hold off
figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Gyroscope Z not eating ")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,12))
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Orientation X eating vs not eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,3))
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,3))
hold off

figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Orientation Y eating vs not eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,4))

plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,4))
hold off

figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Orientation Z eating vs not eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,5))

plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,5))
hold off

figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Orientation W eating vs not eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,6))

plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,6))
hold off

figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Accelerometer X eating vs not eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,7))

plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,7))
hold off

figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Accelerometer Y eating vs not eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,8))

plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,8))
hold off

figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Accelerometer Z eating vs not eating ")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,9))

plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,9))
hold off

figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Gyroscope X eating vs not eating ")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,10))

plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,10))
hold off

figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Gyroscope Y eating vs not eating ")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,11))

plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,11))
hold off

figure;
hold on
xlabel("samples")
ylabel("FFT")
title("Gyroscope Z eating vs not eating ")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,12))

plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,12))
hold off


