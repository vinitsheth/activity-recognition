%plots

% IMU mean
figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 1 eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,3))
hold off
% hold on
% plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,3))

figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 2 eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,4))
hold off
figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 3 eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,5))
hold off
figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 4 eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,6))
hold off
figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 5 eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,7))
hold off
figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 6 eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,8))
hold off
figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 7 eating ")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,9))
hold off
figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 8 eating ")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,10))
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 1 not eating")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,3))
% hold hold offon
% plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,3))

figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 2 not eating")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,4))
hold off
figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 3 not eating")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,5))
hold off
figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 4 not eating")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,6))
hold off
figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 5 not eating")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,7))
hold off
figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 6 not eating")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,8))
hold off
figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 7 not eating ")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,9))
hold off
figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 8 not eating ")
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,10))
hold off


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 1 eating vs not eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,3))
plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,3))
hold off

figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 2 eating vs not eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,4))

plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,4))
hold off

figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 3 eating vs not eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,5))

plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,5))
hold off

figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 4 eating vs not eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,6))

plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,6))
hold off

figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 5 eating vs not eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,7))

plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,7))
hold off

figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 6 eating vs not eating")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,8))

plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,8))
hold off

figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 7 eating vs not eating ")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,9))

plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,9))
hold off

figure;
hold on
xlabel("samples")
ylabel("RMS")
title("EMG 8 eating vs not eating ")
plot(1:length(IMU_fork_sampled_eating),IMU_fork_sampled_eating(:,10))

plot(1:length(IMU_fork_sampled_non_eating),IMU_fork_sampled_non_eating(:,10))
hold off

