
%Phase 1
%Code for reference

% Preprocessing to generate IMU_mean_eating and IMU_mean_non_eating and
% saved in processed-data folder.



feature = 7;
IMU_mean_eating = [];
IMU_mean_non_eating = [];
i=1;
Eating = 1;
while i<=length(IMU_fork)
    temp =[];
    while i<=length(IMU_fork) && IMU_fork(i,end) == Eating
        temp =[temp; IMU_fork(i,feature)];
        i=i+1;
    end
    if Eating ==1
        IMU_mean_eating = [IMU_mean_eating; mean(temp)];
        Eating =0;
    else
        IMU_mean_non_eating = [IMU_mean_non_eating; mean(temp)];
        Eating = 1;
    end
end

plot( 1:length(IMU_mean_eating),IMU_mean_eating)
xlabel("samples")
ylabel(" Mean")
title("Orientation X")
hold on
plot( 1:length(IMU_mean_non_eating),IMU_mean_non_eating)